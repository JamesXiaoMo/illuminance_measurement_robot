import rclpy
from rclpy.node import Node
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Quaternion
from std_msgs.msg import Header
import math
from rclpy.clock import Clock
from imu import imu_driver

class ImuOdometryPublisher(Node):
    def __init__(self):
        super().__init__('imu_odometry_publisher')
        self.publisher_ = self.create_publisher(Odometry, 'odom', 10)
        self.timer = self.create_timer(0.02, self.publish_odom)  # 50Hz

        self.imu = imu_driver.IMU('/dev/ttyAMA0')

        self.dt = 1.0 / 50
        self.velocity = [0.0, 0.0, 0.0]
        self.position = [0.0, 0.0, 0.0]

    def publish_odom(self):
        self.imu.readData()

        acc = self.imu.ACCData
        gyro = self.imu.GYROData
        quat = self.imu.QUATDATA

        acc[2] -= 9.81

        for i in range(3):
            self.velocity[i] += acc[i] * self.dt
            self.position[i] += self.velocity[i] * self.dt

        odom = Odometry()
        odom.header.stamp = Clock().now().to_msg()
        odom.header.frame_id = "odom"
        odom.child_frame_id = "base_link"

        odom.pose.pose.orientation = Quaternion(
            x=quat[1],
            y=quat[2],
            z=quat[3],
            w=quat[0]
        )

        odom.pose.pose.position.x = self.position[0]
        odom.pose.pose.position.y = self.position[1]
        odom.pose.pose.position.z = self.position[2]

        odom.twist.twist.linear.x = self.velocity[0]
        odom.twist.twist.linear.y = self.velocity[1]
        odom.twist.twist.linear.z = self.velocity[2]

        odom.twist.twist.angular.x = math.radians(gyro[0])
        odom.twist.twist.angular.y = math.radians(gyro[1])
        odom.twist.twist.angular.z = math.radians(gyro[2])

        self.publisher_.publish(odom)


def main(args=None):
    rclpy.init(args=args)
    node = ImuOdometryPublisher()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()