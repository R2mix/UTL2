/* ---- La void setup est une boucle qui dure ----
 ---- le temps de lancement du programme et ----
 ---- qui n'est pas répétée.                ---- */

void setup() {               // début de la void
  size(800, 600);            // taille de l'écran
  background(0);             //fond arrière-plan
  rect(50, 50, 50, 50);      // créer un rectangle
}                            // accolade de fin de void


/* ---- La void draw est une boucle qui est ----
 ---- répétée indéfiniment à 60 fps ---- */
 
void draw() {
  rect(mouseX, mouseY, 50, 50); 
  // mouseX et mouseY sont les coordonnées de la souris
}
