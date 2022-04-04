
void setup() {
  Serial.begin(9600); // Start serial communication at 9600 bps
  pinMode(8,  INPUT_PULLUP);

}

void loop() {

  if (!digitalRead(8)) {
    Serial.print('a');
  }

if (analogRead(A0) > 500) {
    Serial.print('b');
  }
  delay(5);
}
