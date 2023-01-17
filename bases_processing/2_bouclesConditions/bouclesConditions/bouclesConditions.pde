int red = 255;                     // variable int générale

void setup() {
  size(800, 600);
}

void draw() {

  for (int i = 200; i < 400; i++) { // boucle répeter
    point(i, 200);                  // dessine un point
  }

  for (int c = 0; c < 101; c++) {
    for (int i = 0; i < 101; i++) {
      point(i, c);
    }
  }

  if (mousePressed) {               // conditions, si la souris pressée
    stroke(red, 255 - red, 0);
  } else {                          // sinon
    stroke(255);
  }
}


void keyPressed() {                 // évenement de touche du clavier pressée
  if (key == ' ') {
    red = int(random(0, 255));      // couleur aléatoire avec conversion en nombre entier
    println(red);
  }
}
