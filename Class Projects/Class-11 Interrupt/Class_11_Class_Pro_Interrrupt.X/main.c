/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 10 June, 2025, 9:46 AM
 */

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)


#include <xc.h>
#define _XTAL_FREQ 20000000

unsigned char value;

void main(void) 
{
    TRISB = 0xF0; // RB4  to RB7 Input
    TRISC = 0x00; // PORTC as Output
    TRISD = 0x00; // PORTD as Output
    
    PORTB = 0x00; 
    PORTC = 0x00; 
    PORTD = 0x00; 
        
    OPTION_REG &= ~(0x01 << 7); // PORTB internal pull up
    
    INTCON = 0x88; // Enble interrupt 
    
    while(1)
    {
        /* Thread Mode */
        PORTD = 0xFF;
        __delay_ms(1000);
        
        PORTD = 0x00;
        __delay_ms(1000);
    }        
    return;
}       

/* Interrupt Flag bit */
void __interrupt() _ISR_Function()
{
    if(INTCON & 0x01)
    {
        value = PORTB;
        
        if(value == 0xE0)
        {
            PORTC = ~PORTC;
        }
        
        /* Clear the Flag */
        INTCON &= ~(0x01 << 0); 
    }
}