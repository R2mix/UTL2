void setup() {
  Serial.begin(115200); // sert à initialiser le port série
  pinMode(6,  INPUT_PULLUP);
  pinMode(7,  INPUT_PULLUP);
  pinMode(8,  INPUT_PULLUP);
  pinMode(9,  INPUT_PULLUP);

}

void loop() {
  Serial.print(digitalRead(6));
  Serial.print(" "); // les espaces servent à séparer les différents capteurs dans le terminal
  Serial.print(digitalRead(7));
  Serial.print(" ");
  Serial.print(digitalRead(8));
  Serial.print(" ");
  Serial.print(digitalRead(9));
  Serial.print(" ");
  Serial.print(analogRead(A0));
  Serial.print("\n"); // retour à la ligne pour terminer la séquence des capteurs
  //delay(1);
}
