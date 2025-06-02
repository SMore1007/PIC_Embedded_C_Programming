/*
 * File:   led_pattern.c
 * Author: Sagar
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
    while(1) 
    {
        // Pattern 1: RD7 -> HIGH, RD1 -> LOW
        PORTD = 0x80; // 1000 0000
        __delay_ms(3000);
        // Pattern 2: RD7 -> LOW, RD1 -> HIGH
        PORTD = 0x02; // 0000 0010
        __delay_ms(3000);
        // Pattern 3: RD7 -> HIGH, RD1 -> HIGH
        PORTD = 0x82; // 1000 0010
        __delay_ms(3000);
        // Pattern 4: RD7 -> LOW, RD1 -> LOW
        PORTD = 0x00; // 0000 0000
        __delay_ms(3000);
    }
}
