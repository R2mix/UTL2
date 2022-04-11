import processing.serial.*;
Serial myPort;
String input;
float data[];


import ddf.minim.*; // importer la bilbiothèque de son
Minim minim;
AudioPlayer son1, son2;//audioplayers pour jouer des sons
float mixeur;//variable du mixeur


PImage image1; // créer un espace dans la mémoire vive de l'ordinateur
PImage image2; // créer un espace dans la mémoire vive de l'ordinateur

void setup() {
  size(800, 600); // taille de l'application.

  minim = new Minim(this);
  son1 = minim.loadFile("groove.mp3", 2048); // importe un son
  son2 = minim.loadFile("jingle.mp3", 2048);
  son1.loop(); //ou son1.play();
  son2.loop(); //ou son2.loop();

  image1 = loadImage("Blue Sky0.png"); // charge l'image depuis le disque dur dans la variable
  image2 = loadImage("cat0.png"); // charge l'image depuis le disque dur dans la variable

  printArray(Serial.list()); // imprime la liste des port dispo
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 115200); // se connecte au port
}

void draw() {

  if ( myPort.available() > 0) {  // If data is available,
    input = myPort.readStringUntil('\n');
    if (input != null)data = float(split(input, ' '));
    println(data);
  }

  if (data.length == 5) { // lengh c'est le nombre de capteurs annoncés par l'arduino

    // ACTIONS quand l'arduino est utilisé ICI
  }
  
  mixeur = map(mouseX, 50, width-50, 0, -30); // mapping de la souris pour faire un mélangeur
  // map(variableSource, minEntrée, maxEntrée, minSortie, maxSortie);
  son1.setGain(mixeur); // 0 = son max - 60 aucun son
  son2.setGain (-1 * (mixeur + 30)); // calcule d'inversion pour mélanger les sons
}

  background(0); // arrière plan de couleur unie
  push(); // délimite l'entrée d'un calque
  tint(255, mouseX); // applique une "teinture" à l'image modifiant sa couleur et
  // sa transparence
  image( image1, 0, 0, 800, 600); // affiche une image sur l'écran
  pop(); // délimite la sortie d'un calque

  push();
  tint(255, 255 - mouseX);
  image( image2, 0, 0, 400, 300); // affiche une image sur l'écran
  pop();
}
