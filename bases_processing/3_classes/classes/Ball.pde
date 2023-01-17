
class Ball {              // définir la balle

  float x;                // variable pour la balle (this)
  float y;

  Ball(float X) {         // fonction d'initialisation de la balle
    x = X;
    y = 0;
  }

  void move() {
    fill(0);
    y = y + 10;           // ajoute 10 à y
    ellipse(x, y, 10, 10);
  }
}
