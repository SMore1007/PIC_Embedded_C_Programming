/*
 * File:    main.c
 * Project: I2C EEPROM Interfacing
 * Author:  Sagar
 */

#include <xc.h>
#include "config.h"
#include "I2C_EEPROM.h"
#define _XTAL_FREQ 16000000

void main(void) {

    I2C_Master_Init(100000);       // Initialize I2C Master with 100kHz clock
    TRISD = 0x00;                  // Set PORTD as output

    // Write Operations
    EEPROM_Write(0x23, 'A');       // Write 'A' (0x41) to address 0x0023
    EEPROM_Write(0x28, 'B');       // Write 'B' (0x42) to address 0x0028 PORTD = 01000010
    EEPROM_Write(0x36, 'C');       // Write 'C' (0x43) to address 0x0036
    __delay_ms(10);                // EEPROM write delay
    
    PORTD = 0x00;
    
        PORTD = EEPROM_Read(0x23);  // Read 'A' (0x41) from 0x0023 ? RD6 & RD0 ON
        __delay_ms(3000);

        PORTD = EEPROM_Read(0x28);  // Read 'B' (0x42) from 0x0028 ? RD6 & RD1 ON
        __delay_ms(3000);

        PORTD = EEPROM_Read(0x36);  // Read 'C' (0x43) from 0x0036 ? RD6 & RD1 & RD0 ON
        __delay_ms(3000);
    while(1) {
        // while loop
    }
    
    return;
}
