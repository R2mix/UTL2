Ball ballInstance;                       // variable de classe

void setup() {
  size(640, 360);
  ballInstance = new Ball(random(640));  // intitialiser la classe
}

void draw() {
  background(255);
  ballInstance.move();                   // appeler une void de la ball
}
