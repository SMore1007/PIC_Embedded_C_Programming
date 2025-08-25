// ESP32 UART Communication Example
// This sends and receives data via Serial Monitor

void setup() {
  Serial.begin(115200); // Start serial communication with laptop
  Serial.println("ESP32 UART Communication Started!");
}

void loop() {
  // Send a message every second
  Serial.println("Msg from ESP32!");
  delay(1000);

  // If data is received from Serial Monitor, print it back
  if (Serial.available()) {
    String msg = Serial.readStringUntil('\n');
    Serial.print("Received: ");
    Serial.println(msg);
  }
}
