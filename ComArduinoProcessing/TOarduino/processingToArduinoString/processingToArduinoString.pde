
import processing.serial.*;

Serial myPort;  // Create object from Serial class

void setup()
{
  size(200, 200);
  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  background(255);
  if (mousePressed) {
    myPort.write('H');              // send an H to indicate mouse is over square
  }
}
