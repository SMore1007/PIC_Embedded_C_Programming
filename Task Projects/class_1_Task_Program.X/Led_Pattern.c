/*
 * File:   led_pattern.c
 * Author: sagar
 *
 * Created on 17 February, 2025, 10:05 AM
 */

// CONFIGURATION BITS (for PIC16F877A)
#pragma config FOSC = HS        // High-Speed Oscillator
#pragma config WDTE = OFF       // Watchdog Timer Disabled
#pragma config PWRTE = OFF      // Power-up Timer Disabled
#pragma config BOREN = OFF      // Brown-out Reset Disabled
#pragma config LVP = OFF        // Low-Voltage ICSP Disabled
#pragma config CPD = OFF        // Data EEPROM Code Protection Disabled
#pragma config WRT = OFF        // Flash Program Memory Write Protection Disabled
#pragma config CP = OFF         // Flash Program Memory Code Protection Disabled

#include <xc.h>
#define _XTAL_FREQ 20000000  // 20 MHz
void main(void) {
    // Initialize PORTD
    TRISD = 0x00;  // Set PORTD as output
    PORTD = 0x00;  // Clear PORTD initially
    // Main loop
    while(1){
        // Pattern 1: RD7 -> HIGH, RD2 -> LOW
        PORTD = 0x80; // 1000 0000
        __delay_ms(3000);

        // Pattern 2: RD7 -> LOW, RD2 -> HIGH
        PORTD = 0x04; // 0000 0100
        __delay_ms(3000);

        // Pattern 3: RD7 -> HIGH, RD2 -> HIGH
        PORTD = 0x84; // 1000 0100
        __delay_ms(3000);

        // Pattern 4: RD7 -> LOW, RD2 -> LOW
        PORTD = 0x00; // 0000 0000
        __delay_ms(3000);
    }
}
