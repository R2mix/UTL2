PImage image1; // créer un espace dans la mémoire vive de l'ordinateur
PImage image2; // créer un espace dans la mémoire vive de l'ordinateur

void setup() {
  size(800, 600); // taille de l'application.
  image1 = loadImage("Blue Sky0.png"); // charge l'image depuis le disque dur dans la variable
  image2 = loadImage("cat0.png"); // charge l'image depuis le disque dur dans la variable
}

void draw() {

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
