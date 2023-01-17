ArrayList<Ball> bullet;                   // créer un tableau contenant la classe balle
Ball ball;                                // on reprend notre classe balle

void setup() {
  size(640, 360);
  bullet = new ArrayList<Ball>();         // intialiser le tableau
}

void draw() {
  background(255);
  if (mousePressed && frameCount % 20  == 0) {    // toute les secondes si on clique, créer une balle
    bullet.add(new Ball(mouseX, mouseY));        // ajoute une nouvelle balle au tableau
  }
  for (int index = bullet.size()-1; index >= 0; index--) {   // répète pour chaque balle dans le tableau
    ball = bullet.get(index);                                // récupère l'index de l'instance de la balle voulue
    ball.move();                                             // la fait bouger
    if (ball.finished()) {                                   // si elle a fini, remove, l'enlever du tableau (soit supprimer ce clone)
      bullet.remove(index);
    }
  }
}
