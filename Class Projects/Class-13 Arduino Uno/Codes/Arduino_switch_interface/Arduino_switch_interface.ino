void setup() {
  // Set digital pins 4 to 7 as inputs
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  pinMode(7, INPUT);

  // Set digital pins 8 and 9 as outputs
  pinMode(8, OUTPUT);  // RC1
  pinMode(9, OUTPUT);  // RC2

  // Turn off both outputs initially
  digitalWrite(8, LOW);
  digitalWrite(9, LOW);

}

void loop() {
  // Read the inputs (RB4 to RB7)
  int rb4 = digitalRead(4);
  int rb5 = digitalRead(5);
  int rb6 = digitalRead(6);
  int rb7 = digitalRead(7);

  // Create a byte value from RB4-RB7
  byte val = (rb4 << 4) | (rb5 << 5) | (rb6 << 6) | (rb7 << 7);

  // Compare input pattern and control output
  if (val == 0xE0) {
    // 1110 0000 → RB5, RB6, RB7 HIGH; RB4 LOW
    digitalWrite(8, HIGH);
    digitalWrite(9, LOW);
  }
  else if (val == 0xD0) {
    // 1101 0000 → RB4, RB6, RB7 HIGH; RB5 LOW
    digitalWrite(8, LOW);
    digitalWrite(9, HIGH);
  }
  else if (val == 0xB0) {
    // 1011 0000 → RB4, RB5, RB7 HIGH; RB6 LOW
    digitalWrite(8, HIGH);
    digitalWrite(9, HIGH);
  }
  else if (val == 0x70) {
    // 0111 0000 → RB4, RB5, RB6 HIGH; RB7 LOW
    digitalWrite(8, LOW);
    digitalWrite(9, LOW);
  }
  else {
    // Default case: turn off both outputs
    digitalWrite(8, LOW);
    digitalWrite(9, LOW);
  }

  delay(50);  // Short delay for stability
}
