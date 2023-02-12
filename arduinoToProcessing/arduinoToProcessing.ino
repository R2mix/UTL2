void setup() {
  Serial.begin(115200); // sert à initialiser le port série
  pinMode(9,  INPUT_PULLUP);
  pinMode(10,  INPUT_PULLUP);
  pinMode(11,  INPUT_PULLUP);
  pinMode(12,  INPUT_PULLUP);

}

void loop() {
  Serial.print(digitalRead(9));
  Serial.print(" "); // les espaces servent à séparer les différents capteurs dans le terminal
  Serial.print(digitalRead(10));
  Serial.print(" ");
  Serial.print(digitalRead(11));
  Serial.print(" ");
  Serial.print(digitalRead(12));
  Serial.print(" ");
  Serial.print(analogRead(A0) / 1023.00);
  Serial.print("\n"); // retour à la ligne pour terminer la séquence des capteurs
  delay(16);
}
