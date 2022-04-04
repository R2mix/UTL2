import processing.serial.*;

Serial myPort;  // Create object from Serial class

int input;

void setup() {
  size(256, 256);  // Stage size

  printArray(Serial.list());

  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  background(0);

  if ( myPort.available() > 0) {  // If data is available,
    input = myPort.read();
    println(input);
}

if (input == 'a') {

    action();
  }
}


void action() {
    rect(0, 0, 50, 50);
  
}
