import processing.serial.*;
Serial myPort;
String input;
float data[] = new float[5];


void setup() {
  size(256, 256);  // Stage size

  printArray(Serial.list()); // imprime la liste des port dispo
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 115200); // se connecte au port
  myPort.bufferUntil ( 'E' );   // Receiving the data from the Arduino IDE
}

void draw() {
  background(0);
  printArray(data);
}


void action() {
  if (data[0] == 0) {
    fill(255, 0, 0);
  }
  if (data[1] == 0) {
    fill(0, 255, 0);
  }
  if (data[2] == 0) {
    fill(0, 0, 255);
  }
  if (data[3] == 0) {
    fill(255);
  }

  rect(0, 0, data[4] * 100, 50);
}



void serialEvent(Serial p) {

  input = p.readStringUntil('E');

  if ( input.substring(0, 2).equals("A0")) {
    data[0] = float(input.substring(2, input.length()-1));
  }
  if ( input.substring(0, 2).equals("A1")) {
    data[1] = float(input.substring(2, input.length()-1));
  }
  
}
