// Bibliothèque pour les boutons et textFields
import controlP5.*;

ControlP5 cp5;

void setup() {
  size(480, 720);
  // on initialise les contrôles et la liste
  cp5 = new ControlP5(this);

  // ajout du bouton pour valider la tache à enregistrer, position, taille et couleurs
  cp5.addBang("Add")
    .setPosition(300, 80)
    .setSize(80, 40)
    .setColorBackground(#DED7D7)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;
}

void draw() {
  // couleur de l'arrière plan
  background(#907A2F);
  // effets de style et boites de texte
  push();
  fill(#DED7D7);
  text("Appuyez sur le bouton ci-dessous :", 20, 68);
  pop();
}

// évenement quand un controle de P5 est utilisé
void controlEvent(ControlEvent theEvent) {
  // on vérifie qu'il s'agit bien d'un controller
  if (theEvent.isController()) {
    // on vérifie que l'utilisateur à appuyé sur ENTER ou cliquer sur le bouton add
    if ( theEvent.getController().getName() == "Add") {
      println("Wow a button !! ");
    }
  }
}
