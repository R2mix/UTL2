void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600);
  pinMode(8,  INPUT_PULLUP);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print(analogRead(A0) / 1023.00);
  Serial.print(" ");
  Serial.print(digitalRead(8));
  Serial.print(" ");
  Serial.print(analogRead(A2) / 1023.00);
  Serial.print(" ");
  Serial.print(analogRead(A3) / 1023.00);
  Serial.print("\n");
  delay(5);
}
