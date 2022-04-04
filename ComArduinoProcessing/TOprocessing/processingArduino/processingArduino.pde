import processing.serial.*;
Serial myPort;                       // The serial port
String input;
float data[];


void setup() {
  size(256, 256);  // Stage size

  printArray(Serial.list());

  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  background(0);

  if ( myPort.available() > 0) {  // If data is available,
    input = myPort.readStringUntil('\n');
    if (input != null)data = float(split(input, ' '));
    println(data);
  }

  if (data.length == 4) {

    action();
  }
}


void action() {

  if (data[1] == 0) {
    rect(0, 0, 50, 50);
  }
}
