#define LED1 7
#define LED2 6

void setup() {
  Serial.begin(9600);            
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  delay(1000);
}

void loop() {
  if (Serial.available() > 0) {
    String data = Serial.readStringUntil('\n');
    data.trim(); // Remove any extra whitespace or \r

    if (data == "A") {
      digitalWrite(LED1, HIGH);
      digitalWrite(LED2, LOW);
    } else if (data == "B") {
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, HIGH);
    } else if (data == "C") {
      digitalWrite(LED1, HIGH);
      digitalWrite(LED2, HIGH);
    } else {
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, LOW);
    }
  }
}
