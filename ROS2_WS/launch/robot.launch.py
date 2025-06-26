from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='power_measurement',
            executable='power_measurement_node.py',
            name='power_measurement_node',
            output='screen'
        ),
        Node(
            package='brightness_measurement',
            executable='brightness_measurement_node',
            name='power_measurement_node',
            output='screen'
        ),
        Node(
            package='imu',
            executable='imu_odometry_publisher',
            name='imu_odometry_publisher',
            output='screen'
        ),
        Node(
            package='motor_control',
            executable='twist_listener',
            name='twist_listener',
            output='screen'
        ),
        Node(
            package='rosbridge_server',
            executable='rosbridge_websocket',
            name='rosbridge_websocket',
            output='screen'
        )
    ])