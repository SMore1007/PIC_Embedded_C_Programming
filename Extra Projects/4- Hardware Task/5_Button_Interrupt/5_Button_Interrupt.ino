#define BTNPIN 23
#define LEDPIN 22
volatile bool buttonPressed = false;  // flag set by ISR

// Interrupt Service Routine (ISR)
void IRAM_ATTR handleButtonInterrupt() {
  buttonPressed = true;   // set flag
}

void setup() {
  Serial.begin(115200);

  pinMode(BTNPIN, INPUT_PULLUP);   // button between GND and GPIO23
  pinMode(LEDPIN, OUTPUT);
  // attach interrupt to BTNPIN, trigger on falling edge (button press)
  attachInterrupt(digitalPinToInterrupt(BTNPIN), handleButtonInterrupt, FALLING);
}

void loop() {
  if (buttonPressed) {
    buttonPressed = false;  // clear flag

    // do your action here
    Serial.println("Button Pressed!");
    digitalWrite(LEDPIN, HIGH);
    
  }
}
