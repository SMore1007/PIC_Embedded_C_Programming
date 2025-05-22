/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 22 May, 2025, 12:12 PM
 */

#include <xc.h>
#include <stdint.h>

// CONFIG
#pragma config FOSC = EXTRC     // Oscillator Selection bits (RC oscillator)
#pragma config WDTE = OFF        // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#define _XTAL_FREQ 20000000

char binary_pattern_2[]={0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0xFF,0xEF,0xBF}; // Common Anode 
char binary_pattern_1[10] = {0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x00, 0x10, 0x40}; // Common cathode

void main(void)
{
    TRISD = 0x00;
    TRISB = 0x00;
    
    PORTB = 0x00;
    PORTD = 0x00;
    
    while(1)
    {
 
        for(int i = 0; i < 10; i++)
        {
            PORTD =  binary_pattern_2[i];
            PORTB = binary_pattern_1[i];
            __delay_ms(1000);   
        }
    }
    return;
}
