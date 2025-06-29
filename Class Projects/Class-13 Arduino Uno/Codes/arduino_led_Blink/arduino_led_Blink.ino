void setup() {
  pinMode(10, OUTPUT); // Set pin 13 as output
}

void loop() {
  digitalWrite(10, HIGH); // Turn LED on
  delay(500);            // Wait for 1 second
  digitalWrite(10, LOW);  // Turn LED off
  delay(500);            // Wait for 1 second
}
