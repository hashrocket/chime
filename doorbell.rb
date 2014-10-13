require 'pry'
require 'serialport'

port = SerialPort.new('/dev/tty.usbmodem1411', 9600, 8, 1, SerialPort::NONE)
binding.pry
