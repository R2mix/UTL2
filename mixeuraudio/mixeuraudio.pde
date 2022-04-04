import ddf.minim.*; // importer la bilbiothèque de son
Minim minim;


AudioPlayer son1, son2;//audioplayers pour jouer des sons

float mixeur;//variable du mixeur

void setup() {

  size(500, 300);

  minim = new Minim(this);
  son1 = minim.loadFile("groove.mp3", 2048); // importe un son
  son2 = minim.loadFile("jingle.mp3", 2048);
  son1.loop(); //ou son1.play();
  son2.loop(); //ou son2.loop();
}

void draw() {
  background(0);

  mixeur = map(mouseX, 50, width-50, 0, -30); // mapping de la souris pour faire un mélangeur
  // map(variableSource, minEntrée, maxEntrée, minSortie, maxSortie);
  son1.setGain(mixeur); // 0 = son max - 60 aucun son
  son2.setGain (-1 * (mixeur + 30)); // calcule d'inversion pour mélanger les sons
}
