#define PIN_1 13
#define PIN_2 12
#define PIN_3 11
#define PIN_4 10

void setup() {
  Serial.begin(9600);            
  pinMode(PIN_1, INPUT_PULLUP);
  pinMode(PIN_2, INPUT_PULLUP);
  pinMode(PIN_3, INPUT_PULLUP);
  pinMode(PIN_4, INPUT_PULLUP);
  delay(1000);
}

void loop() {
  if (digitalRead(PIN_1) == LOW) {
    Serial.println("A");
  } else if (digitalRead(PIN_2) == LOW) {
    Serial.println("B");
  } else if (digitalRead(PIN_3) == LOW) {
    Serial.println("C");
  } else if (digitalRead(PIN_4) == LOW) {
    Serial.println("D");
  }
  
  delay(200); // Avoid flooding the serial port
}
