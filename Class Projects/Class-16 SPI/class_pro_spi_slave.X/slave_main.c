#include <xc.h>
#include <stdint.h>

// CONFIG
#pragma config FOSC = HS        // HS Oscillator
#pragma config WDTE = OFF       // Watchdog Timer off
#pragma config PWRTE = OFF      // Power-up Timer off
#pragma config BOREN = ON       // Brown-out Reset on
#pragma config LVP = OFF        // Low-voltage programming off
#pragma config CPD = OFF        // Data EEPROM Code Protection off
#pragma config WRT = OFF        // Flash Write Protection off
#pragma config CP = OFF         // Flash Program Memory Code Protection off

#define _XTAL_FREQ 20000000

volatile uint8_t Data = 0;

void SPI_Slave_Init(void);

void main(void) 
{
    SPI_Slave_Init(); 
    
    TRISB = 0x00;   // PORTB as output
    PORTB = 0x00;   // Clear PORTB

    while(1)
    {
        // Continuously show the received SPI data
        PORTB = Data; 
    }
}

void SPI_Slave_Init()
{
    // Set SPI mode to Slave, SS enabled
    SSPCON = 0b00100100;   // SSPM3:SSPM0 = 0100, SSPEN = 1
    SSPSTAT = 0x00;        // CKP=0, CKE=0, SMP=0

    // Set pin directions
    TRISC5 = 0;  // SDO: output
    TRISC4 = 1;  // SDI: input
    TRISC3 = 1;  // SCK: input
    TRISA5 = 1;  // SS: input

    // Make RA5 digital (disable analog)
    ADCON1 = 0x06;

    // Clear flags and enable interrupts
    SSPIF = 0;
    SSPIE = 1;
    PEIE = 1;
    GIE = 1;
}

void __interrupt() ISR(void)
{
    if (SSPIF)
    {
        Data = SSPBUF;    // Read received data
        SSPIF = 0;        // Clear interrupt flag
    }
}
