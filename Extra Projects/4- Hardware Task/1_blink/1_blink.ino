#define LEDPIN 2
void setup() {
  Serial.begin(115200);
  pinMode(LEDPIN, OUTPUT); 
}

void loop() {
  Serial.println("LED HIGH");
  digitalWrite(LEDPIN, HIGH);
  delay(1000);
  Serial.println("LED LOW"); 
  digitalWrite(LEDPIN, LOW);
  delay(1000);
}
