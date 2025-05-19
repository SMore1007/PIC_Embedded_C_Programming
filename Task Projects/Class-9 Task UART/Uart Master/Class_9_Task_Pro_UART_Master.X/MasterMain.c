/*
 * File:   MasterMain.c
 * Author: sagar
 *
 * Created on 19 May, 2025, 12:03 PM
 */


#include <xc.h>
#include <stdint.h>

#define _XTAL_FREQ 20000000

void uartInit(void);
uint8_t value;
uint8_t RXvalue;


void main(void) 
{
    uartInit();
    
    while(1)
    {
        value = PORTB;
        switch(value)
        {
            case 0xE0:
                TXREG = 'A';
                __delay_ms(100);
                break;
            case 0xD0:
                TXREG = 'B';
                __delay_ms(100);
                break;
            case 0xB0:
                TXREG = 'C';
                __delay_ms(100);
                break;
            case 0x70:
                TXREG = 'D';
                __delay_ms(100);
                break;
        }
        
        if(PIR1 & (0x1U << 5)) // Check RCIF flag
        {
            RXvalue = RCREG;
            switch(RXvalue)
            {
                case 'a':
                    PORTD = 0x40;
                    __delay_ms(100);
                    break;
                case 'b':
                    PORTD = 0x02;
                    __delay_ms(100);
                    break;
                case 'c':
                    PORTD = 0x42;
                    __delay_ms(100);
                    break;
                case 'd':
                    PORTD = 0x00;
                    __delay_ms(100);
                    break;
            }
        }
    }
}

void uartInit(void)
{
    
    TRISB = 0xF0;
    PORTB = 0x00;
    TRISD = 0x00;
    PORTD = 0x00;
    OPTION_REG &= ~(0x1U << 7); // Enable Pull Up

    // UART Configuration
    TXSTA = 0x20;
    RCSTA = 0x90; 
    SPBRG = 0x09;

    TRISC6 = 0; // TX pin as output
}
