#!/usr/bin/env python3

import rclpy
from rclpy.node import Node

from brightness_measurement import VEML7700_driver
from std_msgs.msg import Float32



class BrightnessMeasurement(Node):
    def __init__(self):
        super().__init__('BrightnessMeasurement')
        self.publisher_ = self.create_publisher(Float32, 'brightness_info', 10)
        timer_period = 1
        self.timer = self.create_timer(timer_period, self.timer_callback)
        self.sensor = VEML7700_driver.VEML7700()

    def timer_callback(self):
        msg = Float32()
        msg.data = self.sensor.read_als()
        self.publisher_.publish(msg)
        self.get_logger().info(f'Publishing: Brightness->{msg.data}')



def main(args=None):
    rclpy.init(args=args)

    brightness_measurement = BrightnessMeasurement()

    rclpy.spin(brightness_measurement)

    brightness_measurement.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()