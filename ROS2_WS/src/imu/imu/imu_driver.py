import serial
import time
import struct
import math


class IMU:
    def __init__(self, port='/dev/ttyAMA0'):
        self.data_length = 11
        self.buff_length = 11
        self.RxBuff = [0] * self.data_length
        self.ACCData = [0.0] * 3
        self.GYROData = [0.0] * 3
        self.QUATDATA = [0.0] * 4
        self.start = False
        self.CheckSum = 0

        self.ser = serial.Serial(port, 9600, timeout=0.5)
        self.send_cmd(self.ser, "FF AA 69 88 B5")     # 解锁
        self.send_cmd(self.ser, "FF AA 02 06 02")     # 设置输出内容 ACC, GYRO, QUAT
        self.send_cmd(self.ser, "FF AA 04 06 00")     # 设置波特率为 115200
        self.send_cmd(self.ser, "FF AA 03 08 00")     # 设置输出频率为 50Hz
        self.send_cmd(self.ser, "FF AA 00 00 00")     # 保存设置
        self.ser.close()
        time.sleep(0.5)
        self.ser = serial.Serial(port, 115200, timeout=0.5)
        
        print("Serial is Opened:", self.ser.is_open)

    def send_cmd(self, ser, hex_str):
        ser.write(bytes.fromhex(hex_str))
        time.sleep(0.1)

    def parse_frame(self, frame: bytes):
        if len(frame) != 11 or frame[0] != 0x55:
            return None

        frame_id = frame[1]
        if frame_id == 0x51:
            ax_raw = struct.unpack('<h', bytes(frame[2:4]))[0]
            ay_raw = struct.unpack('<h', bytes(frame[4:6]))[0]
            az_raw = struct.unpack('<h', bytes(frame[6:8]))[0]

            scale = 16.0
            g = 9.81

            self.ACCData[0] = ax_raw / 32768.0 * scale * g
            self.ACCData[1] = ay_raw / 32768.0 * scale * g
            self.ACCData[2] = az_raw / 32768.0 * scale * g

            return {
                "acc_x (m/s^2)": self.ACCData[0],
                "acc_y (m/s^2)": self.ACCData[1],
                "acc_z (m/s^2)": self.ACCData[2]
            }
        elif frame_id == 0x52:
            gx_raw = struct.unpack('<h', bytes(frame[2:4]))[0]
            gy_raw = struct.unpack('<h', bytes(frame[4:6]))[0]
            gz_raw = struct.unpack('<h', bytes(frame[6:8]))[0]

            scale = 180.0

            self.GYROData[0] = math.radians(gx_raw / 32768.0 * scale)
            self.GYROData[1] = math.radians(gy_raw / 32768.0 * scale)
            self.GYROData[2] = math.radians(gz_raw / 32768.0 * scale)

            return {
                "gyro_x (°/s)": self.GYROData[0],
                "gyro_y (°/s)": self.GYROData[1],
                "gyro_z (°/s)": self.GYROData[2]
            }
        elif frame_id == 0x59:
            q0_raw = struct.unpack('<h', bytes(frame[2:4]))[0]
            q1_raw = struct.unpack('<h', bytes(frame[4:6]))[0]
            q2_raw = struct.unpack('<h', bytes(frame[6:8]))[0]
            q3_raw = struct.unpack('<h', bytes(frame[8:10]))[0]

            self.QUATDATA = [
                q0_raw / 32768.0,
                q1_raw / 32768.0,
                q2_raw / 32768.0,
                q3_raw / 32768.0
            ]

            return {
                "q0": self.QUATDATA[0],
                "q1": self.QUATDATA[1],
                "q2": self.QUATDATA[2],
                "q3": self.QUATDATA[3]
            }
        else:
            return {"unknown": frame}
    
    def preProcessData(self, data):
        if data == 0x55 and self.start == 0:
            self.start = True
            self.CheckSum = 0
            for i in range(self.data_length):
                self.RxBuff[i] = 0
        if self.start:
            self.CheckSum += data
            self.RxBuff[self.data_length - self.buff_length] = data
            self.buff_length -= 1
            if self.buff_length == 0:
                self.CheckSum = self.CheckSum - data
                self.start = False
                self.buff_length = self.data_length
                if self.CheckSum & 0xFF == data:
                    print(self.parse_frame(self.RxBuff))
                else:
                    print("Checksum Error")
                    return None


    def readData(self):
        data = self.ser.read(1)
        self.preProcessData(int(data.hex(), 16))
        

if __name__ == '__main__':
    imu = IMU('/dev/ttyAMA0')
    while True:
        imu.readData()
