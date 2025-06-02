#include <xc.h>
#include <stdint.h>

#define _XTAL_FREQ 20000000

void uartInit(void);
uint8_t value;

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
    }
}

void uartInit(void)
{
    TRISB = 0xF0;
    PORTB = 0x00;
    OPTION_REG &= ~(0x1U << 7); // Enable Pull Up

    // UART Configuration
    TXSTA = 0x20;
    RCSTA = 0x90; 
    SPBRG = 0x09;

    TRISC6 = 0; // TX pin as output
}
