
class Ball {

  float x;
  float y;

  Ball(float X, float Y) {
    x = X;
    y = Y;
  }

  void move() {
    fill(0);
    y = y + 10;
    ellipse(x, y, 10, 10);
  }

  boolean finished() {  // boulean contenant une condition
    if (y > height) {
      return true;
    } else {
      return false;
    }
  }
}
