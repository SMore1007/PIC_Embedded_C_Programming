/*
 * File:    main.c
 * Project: I2C EEPROM Interfacing
 * Author:  Khaled Magdy
 * Visit @  https://www.DeepBlueMbedded.com
 */
#include <xc.h>
#include "config.h"
#include "I2C_EEPROM.h"
#define _XTAL_FREQ 16000000

void main(void) {

    I2C_Master_Init(100000);
    unsigned int Address = 0x0020; // Some Random Address
    // Some Random Data BufferTo Write
    unsigned char Buffer[5] = {0x05, 0x06, 0x07, 0x08, 0x09};
    unsigned char ReadBuffer[5];
    
    //---[ Write Page ]---
    EEPROM_Write_Page(Address, Buffer, 5);
    __delay_ms(10);  // Wait tWR=10ms For Write To Complete
    
    //---[ Read Page ]---
    TRISD = 0x00;
    EEPROM_Read_Page(Address, ReadBuffer, 5);
    for(int i=0; i<5; i++)
    {
        PORTD = ReadBuffer[i];
        __delay_ms(1000);
    }
    
    while(1)
    {
        
    }
    return;
}
