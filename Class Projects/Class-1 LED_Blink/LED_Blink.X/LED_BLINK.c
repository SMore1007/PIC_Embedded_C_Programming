/*
 * File:   LED_BLINK.c
 * Author: sagar
 *
 * Created on 16 February, 2025, 4:36 PM
 */


// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = EXTRC     // Oscillator Selection bits (RC oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)


#include <xc.h>               // Include header file for PIC microcontroller
#define _XTAL_FREQ 20000000   // Define crystal oscillator frequency as 20 MHz

void main(void) 
{
    TRISD = 0x00;             // Set all PORTD pins as output (0 = output, 1 = input)
    while(1)                  // Infinite loop
    {
        PORTD = 0x04;         // Set RD2 (3rd pin of PORTD) high (binary: 0000 0100)
        __delay_ms(1000);     // Delay of 1000 milliseconds (1 second)
        PORTD = 0x00;         // Set all PORTD pins low (binary: 0000 0000)
        __delay_ms(1000);     // Delay of 1000 milliseconds (1 second)
    }
}
