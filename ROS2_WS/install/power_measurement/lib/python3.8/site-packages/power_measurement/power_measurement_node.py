#!/usr/bin/env python3

import rclpy
from rclpy.node import Node

from power_measurement.msg import Ina228Sensor
from power_measurement import ina228_driver



class PowerMeasurement(Node):
    def __init__(self):
        super().__init__('PowerMeasurement')
        self.publisher_ = self.create_publisher(Ina228Sensor, 'power_info', 10)
        timer_period = 1
        self.timer = self.create_timer(timer_period, self.timer_callback)
        self.ina228 = ina228_driver.INA228()

    def timer_callback(self):
        msg = Ina228Sensor()
        msg.voltage = self.ina228.get_vbus_voltage()
        msg.current = self.ina228.get_current()
        msg.power = self.ina228.get_power()
        self.publisher_.publish(msg)
        self.get_logger().info('Publishing: Voltage->"{}" Current->"{}" Power->"{}"'.format(msg.voltage, msg.current, msg.power))



def main(args=None):
    rclpy.init(args=args)

    power_measurement = PowerMeasurement()

    rclpy.spin(power_measurement)

    power_measurement.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()