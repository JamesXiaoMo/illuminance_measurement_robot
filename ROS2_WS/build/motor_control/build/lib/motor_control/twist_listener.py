import rclpy
from rclpy.node import Node
from geometry_msgs.msg import Twist
import serial

class TwistListener(Node):
    def __init__(self):
        super().__init__('TwistListener')
        self.ser = serial.Serial('/dev/ttyUSB0', 115200, timeout=0.1)
        self.subscription = self.create_subscription(
            Twist,
            'cmd_vel',
            self.listener_callback,
            10
        )
        self.subscription

    def listener_callback(self, msg):
        cmd = f"V {msg.linear.x:.2f} {msg.linear.y:.2f} {msg.angular.z:.2f}\n"
        self.ser.write(cmd.encode('utf-8'))

def main(args=None):
    rclpy.init(args=args)
    node = TwistListener()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()