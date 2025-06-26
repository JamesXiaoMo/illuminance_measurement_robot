from smbus2 import SMBus
import time

class VEML7700:
    I2C_ADDR = 0x10
    ALS_CONF = 0x00
    ALS_DATA = 0x04

    def __init__(self, bus_num=1):
        self.bus = SMBus(bus_num)
        self.init_sensor()

    def init_sensor(self):
        config = 0x0000
        config |= (0x0 << 11)  # Gain 1x
        config |= (0x5 << 6)   # Integration time 100ms
        config &= ~(1 << 1)    # ALS enable
        self.write_word(self.ALS_CONF, config)

    def write_word(self, reg, value):
        low = value & 0xFF
        high = (value >> 8) & 0xFF
        self.bus.write_i2c_block_data(self.I2C_ADDR, reg, [low, high])

    def read_word(self, reg):
        data = self.bus.read_i2c_block_data(self.I2C_ADDR, reg, 2)
        return data[1] << 8 | data[0]

    def read_als(self):
        raw = self.read_word(self.ALS_DATA)
        lux = self.convert_to_lux(raw)
        return lux

    def convert_to_lux(self, raw):
        return raw * 0.03833

    def close(self):
        self.bus.close()


if __name__ == "__main__":
    sensor = VEML7700()
    try:
        while True:
            lux = sensor.read_als()
            print(f"Ambient Light: {lux:.2f} lux")
            time.sleep(1)
    except KeyboardInterrupt:
        print("Exiting...")
    finally:
        sensor.close()