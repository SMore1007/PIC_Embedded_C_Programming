#define Analog_in PC1       // A1 is the analog input pin
#define Analog_Out PD6       // Digital pin 3 (PWM output)

void setup() {
  pinMode(Analog_in, INPUT);
  pinMode(Analog_Out, OUTPUT);
}

void loop() {
  int value = analogRead(Analog_in);           // Read analog value (0–1023)
  int pwmValue = map(value, 0, 1023, 0, 255);   // Convert to 8-bit PWM
  analogWrite(Analog_Out, pwmValue);           // Write PWM output
  
}
