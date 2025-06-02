/* 
 * File:   LCD_Header.h
 * Author: sagar
 *
 * Created on 2 June, 2025, 10:48 PM
 */

#ifndef LCD_HEADER_H
#define	LCD_HEADER_H

#ifdef	__cplusplus
extern "C" {
#endif

    /* Function prototypes */
    void LcdInit(void);
    void LcdOutput(uint16_t i);
    void LcdData(uint8_t i);
    void LcdCommand(uint8_t i);

#ifdef	__cplusplus
}
#endif

#endif	/* LCD_HEADER_H */

