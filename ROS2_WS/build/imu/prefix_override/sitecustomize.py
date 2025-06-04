import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/illuminance_measurement_robot/ROS2_WS/install/imu'
