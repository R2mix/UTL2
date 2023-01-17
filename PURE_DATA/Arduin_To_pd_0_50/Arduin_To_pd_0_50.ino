


void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600);

  pinMode(2, INPUT_PULLUP);
  pinMode(3,  INPUT_PULLUP);
  pinMode(4,  INPUT_PULLUP);
  pinMode(5,  INPUT_PULLUP);
  pinMode(6,  INPUT_PULLUP);
  pinMode(7,  INPUT_PULLUP);
  pinMode(8,  INPUT_PULLUP);
  pinMode(9,  INPUT_PULLUP);

}

void loop() {
  
  Serial.print("A0");
  Serial.print(analogRead(A0));
  Serial.print("E");

  Serial.print("A1");
  Serial.print(analogRead(A1));
  Serial.print("E");

  Serial.print("A2");
  Serial.print(analogRead(A2));
  Serial.print("E");

  Serial.print("A3");
  Serial.print(analogRead(A3));
  Serial.print("E");

  Serial.print("A4");
  Serial.print(analogRead(A4));
  Serial.print("E");

  Serial.print("A5");
  Serial.print(analogRead(A5));
  Serial.print("E");

  Serial.print("D2");
  Serial.print(digitalRead(2));
  Serial.print("E");

  Serial.print("D3");
  Serial.print(digitalRead(3));
  Serial.print("E");

  Serial.print("D4");
  Serial.print(digitalRead(4));
  Serial.print("E");

  Serial.print("D5");
  Serial.print(digitalRead(5));
  Serial.print("E");

  Serial.print("D6");
  Serial.print(digitalRead(6));
  Serial.print("E");

  Serial.print("D7");
  Serial.print(digitalRead(7));
  Serial.print("E");

  Serial.print("D8");
  Serial.print(digitalRead(8));
  Serial.print("E");

  Serial.print("D9");
  Serial.print(digitalRead(9));
  Serial.print("E");

  delay(5);
}
