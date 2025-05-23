import rclpy
from rclpy.node import Node
import sys, tty, termios
import math
import serial

class RemoteControl(Node):
    def __init__(self):
        super().__init__('RemoteControl')

        self.ser = serial.Serial('/dev/ttyUSB0', 115200, timeout=0.1)

        self.timer = self.create_timer(0.1, self.read_key)
        self.Vx = 0.0 
        self.Vy = 0.0
        self.Vangle = 0.0

    def getch(self):
        fd = sys.stdin.fileno()
        old = termios.tcgetattr(fd)
        try:
            tty.setraw(fd)
            ch = sys.stdin.read(1)
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old)
        return ch

    def read_key(self):
        key = self.getch()
        if key == 'w':
            self.Vx = self.Vx + 0.5
        elif key == 's':
            self.Vx = self.Vx - 0.5
        elif key == 'a':
            self.Vy = self.Vy + 0.5
        elif key == 'd':
            self.Vy = self.Vy - 0.5
        elif key == 'q':
            self.Vangle = self.Vangle + 0.5
        elif key == 'e':
            self.Vangle = self.Vangle - 0.5
        elif key == 'x':
            self.Vx = 0.0
            self.Vy = 0.0
            self.Vangle = 0.0
        elif key == 'c':
            self.timer.cancel()
        else:
            return

        cmd = f"V {self.Vx:.2f} {self.Vy:.2f} {self.Vangle:.2f}\n"
        self.ser.write(cmd.encode('utf-8'))

        print(f"Send: {cmd.strip()}")

def main(args=None):
    rclpy.init(args=args)
    node = RemoteControl()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        print("Stopping remote control...")
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()