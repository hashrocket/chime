require 'serialport'

port = SerialPort.new '/dev/tty.usbmodem1411', 9600, 8, 1, SerialPort::NONE

ON    = 1
OFF   = 0
DELAY = 3

run -> env {
  port.write ON

  Thread.new {
    sleep DELAY
    port.write OFF
  }

  [200, {}, []]
}
