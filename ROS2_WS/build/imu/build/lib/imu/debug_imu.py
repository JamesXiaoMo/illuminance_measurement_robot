import serial
import time

def send_cmd(ser, hex_str):
    ser.write(bytes.fromhex(hex_str))
    time.sleep(0.1)

# 1. 以默认波特率（假设是 9600）打开串口
ser = serial.Serial('/dev/ttyAMA0', 9600, timeout=0.5)

# 2. 解锁并设置参数
send_cmd(ser, "FF AA 69 88 B5")     # 解锁
send_cmd(ser, "FF AA 02 07 02")     # 设置输出内容：TIME, ACC, GYRO, MAG, QUAT
send_cmd(ser, "FF AA 04 06 00")     # 设置波特率为 115200
send_cmd(ser, "FF AA 00 00 00")     # 保存设置