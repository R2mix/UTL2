int nombreEntier = 10 ;          // variable à nombres entiers
float nombreAVirgule = 10.00 ;   // variable à nombres à virgules
String text = "ce texte";        // variable de texte
char lettre = 'a';               // variable de lettre
boolean ouiNon = true ;          // variable vrai ou fausse
PImage image1;                   // variable d'images

void setup() {
  size(800, 600);
  image1 = loadImage("Night City With Street.png");    // importe une image à l'adresse et au nom suivant (de base dans dossier data source)
  image1.resize(width, height);                        // change la taille de l'image à la résolution voulue (ici width = largeur de l'écran et height = hauteur)
}

void draw() {
  println(nombreEntier, nombreAVirgule, text, lettre, ouiNon, image1);
  background(0);             //fond arrière-plan, on peut y mettre une image ou une couleur
  image(image1, 0, 0);       // affiche une image aux coordonées choisies
  // translate(mouseX, mouseY);  // déplace les objects en dessous
  // rotate(radians(20));       // fait une rotations aux objets en dessous
  push();                    // début limite d'effet de transformation et de style (voir pushMatrix et pushStyle);
  fill(#C92020);             // colorier l'interieur d'une couleur
  stroke(#433333);           // colorier les contours d'une couleur
  strokeWeight(10);          // taille de contours
  rect(350, 50, 50, 50);      // créer un rectangle (voir square);
  pop();                     // fin limite d'effet de transformation et de style (voir popMatrix et popStyle);
  // translate(mouseX, mouseY);
  // rotate(radians(20));
  ellipse(200, 200, 50, 50); // créer une ellipse (voir circle)
  rectangle(mouseX);
}

void rectangle(int size) {   // fonction personnalisée avec variable locale

  push();                    // début limite d'effet de transformation et de style (voir pushMatrix et pushStyle);
  fill(#C92020);             // colorier l'interieur d'une couleur
  stroke(#433333);           // colorier les contours d'une couleur
  strokeWeight(10);          // taille de contours
  rect(50, 400, size, 50);   // créer un rectangle (voir square);
  pop();                     // fin limite d'effet de transformation et de style (voir popMatrix et popStyle);
}
