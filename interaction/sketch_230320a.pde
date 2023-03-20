import ddf.minim.*;


boolean interruptBackground = false; // déclaration de la variable
Minim m;
AudioPlayer piste1;

PImage bouton1, bouton2;


void setup() {
  
  size(800, 600);

  m = new Minim(this); // audio en 16 bit 44100 hz
  piste1 = m.loadFile("120 Dance Organ 02_Em-converted.wav", 2048);
  bouton1 = loadImage("Button1.png");
  bouton2 = loadImage("Button2.png");

  bouton1.resize(60, 60); // change la taille d'une images
  bouton2.resize(60, 60);
}

void draw() {
  background(255, 0, 0);
  if (interruptBackground == false) { // quand l'arrière plan et sur rouge
    image(bouton1, 0, 0);
    piste1.pause(); // met sur pause le son
    textSize(64);
    fill(0, 255, 0);
    text("texte 2", 300, 200);
  }
  if (interruptBackground == true) { // quand l'arrière plan et sur vert
    background(0, 255, 0);
    image(bouton2, 0, 0);
    fill( 255, 0, 0);
    textSize(64);
    text("blablabla", 300, 200);
    if (piste1.isPlaying() == false) { // lance le son uniquement s'il est sur pause
      piste1.play();
      piste1.rewind(); // "rembobine le son" le remet au début
    }
  }
}

void mousePressed() {// activée au moment où on appuye sur un bouton de la souris
  if (mouseX > 0 && mouseX < 0 + bouton1.width && mouseY > 0 && mouseY < 0 + bouton1.width) {
    interruptBackground = !interruptBackground; // interchange true/false la variable boolean
  }
}

void keyReleased() {
  if (key == 'p') {
    interruptBackground = !interruptBackground; // interchange true/false la variable boolean
  }
}
