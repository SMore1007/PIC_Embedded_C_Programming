#include <xc.h>
#include <stdint.h>

#define _XTAL_FREQ 20000000

void uartInit(void);
uint8_t RXvalue;

void main(void) 
{
    uartInit();
    TRISD = 0x00; // PORTD as output
    PORTD = 0x00;
    
    while(1)
    {
        if(PIR1 & (0x1U << 5)) // Check RCIF flag
        {
            RXvalue = RCREG;
            switch(RXvalue)
            {
                case 'A':
                    PORTD = 0x40; // RD6 On, rest Off
                    break;
                case 'B':
                    PORTD = 0x02; // RD1 On, rest Off
                    break;
                case 'C':
                    PORTD = 0x00; // All Off
                    break;
                case 'D':
                    PORTD = 0x42; // RD6 and RD1 On
                    break;
            }        
        }
    }
}

void uartInit(void)
{
    TRISB = 0xF0;
    PORTB = 0x00;
    OPTION_REG &= ~(0x01 << 7);

    // UART Configuration
    TXSTA = 0x20;
    RCSTA = 0x90; 
    SPBRG = 0x09;

    TRISC7 = 1; // RX as input
}
