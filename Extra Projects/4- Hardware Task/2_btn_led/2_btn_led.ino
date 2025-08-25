#define MAINLED 2
#define BTNPIN 23

void setup() {
  Serial.begin(115200);
  pinMode(MAINLED, OUTPUT);
  pinMode(BTNPIN, INPUT_PULLUP);   // or INPUT_PULLUP if using pull-up wiring
}

void loop() {
  int state = digitalRead(BTNPIN);

  if (state == LOW) {
    Serial.println("LED HIGH");
    digitalWrite(MAINLED, HIGH);
  } else {
    Serial.println("LED LOW");
    digitalWrite(MAINLED, LOW);
  }
}
