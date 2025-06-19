
// LCD_Header.h
/*
* File: LCD_Header.h
* Author: sagar
*
* Created on 8 June, 2025, 8:47 AM
*/
#ifndef LCD_HEADER_H
#define LCD_HEADER_H
#ifdef __cplusplus
extern "C" {
#endif
/* Function prototypes */
void Lcdinit(void);
void LcdOutput(uint16_t i);
void LcdData(uint8_t i);
void LcdCommand(uint8_t i);
#ifdef __cplusplus
}
#endif
#endif /* LCD_HEADER_H */// keypad.h

/*
* File: keypad.h
* Author: sagar
*
* Created on 8 June, 2025, 9:08 AM
*/
#ifndef KEYPAD_H
#define KEYPAD_H
#ifdef __cplusplus
extern "C" {
#endif
char keypad_getkey(void);
#ifdef __cplusplus
}
#endif
#endif /* KEYPAD_H */