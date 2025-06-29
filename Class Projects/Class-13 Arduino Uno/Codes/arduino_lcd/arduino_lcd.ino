

#include <LiquidCrystal.h>

// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  lcd.begin(16, 2);              // set up the LCD's number of columns and rows
  lcd.print("ARDUINO LCD");      // Print a message to the LCD
}

void loop() {
  // nothing to do here
}
