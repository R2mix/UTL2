import processing.serial.*;
Serial myPort;                       
String input;
float data[] = new float[5];


void setup() {
  size(256, 256);  // Stage size

  printArray(Serial.list()); // imprime la liste des port dispo
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 115200); // se connecte au port
}

void draw() {
  background(0);

  if ( myPort.available() > 0) {  // If data is available,
    input = myPort.readStringUntil('\n'); 
    if (input != null)data = float(split(input, ' '));
    println(data);
  }

  if (data.length == 5) { // lengh c'est le nombre de capteurs annoncés par l'arduino

    action();
  }
}


void action() {
 if (data[0] == 0) {
    fill(255,0,0);
  }
  if (data[1] == 0) {
    fill(0,255,0);
  }
   if (data[2] == 0) {
    fill(0,0,255);
  }
   if (data[3] == 0) {
    fill(255);
  }
  
  rect(0, 0, data[4] * 100, 50);
  
}
