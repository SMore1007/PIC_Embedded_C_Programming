// ESP32 PWM on Pin 23 (Core v3.x compatible)

const int pwmPin = 23;      // PWM output pin
const int pwmChannel = 0;   // Channel 0–7
const int pwmFreq = 5000;   // Frequency in Hz
const int pwmResolution = 8; // Resolution bits (0–255 for 8-bit)

void setup() {
  Serial.begin(115200);

  // Attach PWM channel to pin
  ledcAttach(pwmPin, pwmFreq, pwmResolution);  // <-- new API in ESP32 core v3.x
  Serial.println("PWM example started!");
}

void loop() {
  // Sweep duty cycle from 0 to 255
  for (int dutyCycle = 0; dutyCycle <= 255; dutyCycle++) {
    ledcWrite(pwmPin, dutyCycle);  // write duty to pin
    Serial.print("PWM Duty Cycle: ");
    Serial.println(dutyCycle);
    delay(50);
  }
    delay(1000);
  // Sweep back from 255 to 0
  for (int dutyCycle = 255; dutyCycle >= 0; dutyCycle--) {
    ledcWrite(pwmPin, dutyCycle);
    Serial.print("PWM Duty Cycle: ");
    Serial.println(dutyCycle);
    delay(50);
  }
}
