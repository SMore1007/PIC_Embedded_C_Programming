subtitle "Microchip MPLAB XC8 C Compiler v3.00 (Free license) build 20241204225717 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 61 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 75 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 161 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 168 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 218 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 280 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 342 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 404 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 436 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 732 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 810 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "D:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_Lcdinit
	FNCALL	_main,_keyScan
	FNCALL	_keyScan,_LcdCommand
	FNCALL	_keyScan,_LcdData
	FNCALL	_keyScan,_LcdOutput
	FNCALL	_LcdOutput,_LcdCommand
	FNCALL	_LcdOutput,_LcdData
	FNCALL	_LcdOutput,___lwdiv
	FNCALL	_LcdOutput,___lwmod
	FNCALL	_Lcdinit,_LcdCommand
	FNROOT	_main
	global	_Array
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	30

;initializer for _Array
	retlw	053h
	retlw	045h
	retlw	054h
	retlw	020h
	retlw	053h
	retlw	050h
	retlw	044h
	retlw	03Ah
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	072h
	retlw	070h
	retlw	06Dh
	global	_j
	global	_value
	global	_PORTD
_PORTD	set	0x8
	global	_PORTC
_PORTC	set	0x7
	global	_PORTB
_PORTB	set	0x6
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "OFF"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"dist/default/production\Class_4_Class_Pro_Set_Spd.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_j:
       ds      2

_value:
       ds      1

_n:
       ds      1

_m:
       ds      1

_x:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	30
_Array:
       ds      15

	file	"dist/default/production\Class_4_Class_Pro_Set_Spd.X.production.s"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+15)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Lcdinit:	; 1 bytes @ 0x0
?_keyScan:	; 1 bytes @ 0x0
?_LcdCommand:	; 1 bytes @ 0x0
?_LcdData:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
??_LcdCommand:	; 1 bytes @ 0x0
??_LcdData:	; 1 bytes @ 0x0
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	LcdData@i
LcdData@i:	; 1 bytes @ 0x3
	global	LcdCommand@i
LcdCommand@i:	; 1 bytes @ 0x3
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
??_Lcdinit:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x5
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x7
	ds	2
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x9
??___lwdiv:	; 1 bytes @ 0x9
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xB
	ds	1
?_LcdOutput:	; 1 bytes @ 0xC
	global	LcdOutput@i
LcdOutput@i:	; 2 bytes @ 0xC
	ds	2
??_keyScan:	; 1 bytes @ 0xE
??_LcdOutput:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	LcdOutput@d1
LcdOutput@d1:	; 1 bytes @ 0x0
	ds	1
	global	LcdOutput@d2
LcdOutput@d2:	; 1 bytes @ 0x1
	ds	1
	global	LcdOutput@d3
LcdOutput@d3:	; 1 bytes @ 0x2
	ds	1
	global	LcdOutput@d4
LcdOutput@d4:	; 1 bytes @ 0x3
	ds	1
	global	keyScan@i
keyScan@i:	; 2 bytes @ 0x4
	ds	2
	global	keyScan@i_72
keyScan@i_72:	; 2 bytes @ 0x6
	ds	2
??_main:	; 1 bytes @ 0x8
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        15
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     11      32
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _keyScan->_LcdOutput
;!    _LcdOutput->___lwdiv
;!    ___lwdiv->___lwmod
;!    _Lcdinit->_LcdCommand
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_keyScan
;!    _keyScan->_LcdOutput
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0     797
;!                                              8 BANK0      3     3      0
;!                            _Lcdinit
;!                            _keyScan
;! ---------------------------------------------------------------------------------
;! (1) _keyScan                                              4     4      0     768
;!                                              4 BANK0      4     4      0
;!                         _LcdCommand
;!                            _LcdData
;!                          _LcdOutput
;! ---------------------------------------------------------------------------------
;! (2) _LcdOutput                                            6     4      2     574
;!                                             12 COMMON     2     0      2
;!                                              0 BANK0      4     4      0
;!                         _LcdCommand
;!                            _LcdData
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4     165
;!                                              0 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              7     3      4     168
;!                                              5 COMMON     7     3      4
;!                            ___lwmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _LcdData                                              4     4      0      29
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _Lcdinit                                              3     3      0      29
;!                                              4 COMMON     3     3      0
;!                         _LcdCommand
;! ---------------------------------------------------------------------------------
;! (3) _LcdCommand                                           4     4      0      29
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Lcdinit
;!     _LcdCommand
;!   _keyScan
;!     _LcdCommand
;!     _LcdData
;!     _LcdOutput
;!       _LcdCommand
;!       _LcdData
;!       ___lwdiv
;!         ___lwmod (ARG)
;!       ___lwmod
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BANK3               96      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BANK0               80     11      32     40.0%
;!BITBANK0            80      0       0      0.0%
;!COMMON              14     14      14    100.0%
;!BITCOMMON           14      0       0      0.0%
;!DATA                 0      0      46      0.0%
;!STACK                0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Lcdinit
;;		_keyScan
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	34
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	34
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	35
	
l932:	
;main.c: 35:     LcdCommand(0x30);
	fcall	_Lcdinit
	line	39
	
l934:	
;main.c: 38:     _delay((unsigned long)((100)*(20000000/4000.0)));;main.c: 39:     LcdCommand(0x38);
	fcall	_keyScan
	line	40
	
l936:	
;main.c: 40:     _delay((unsigned long)((100)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2)
movlw	138
movwf	((??_main+0)+0+1)
	movlw	85
movwf	((??_main+0)+0)
	u357:
decfsz	((??_main+0)+0),f
	goto	u357
	decfsz	((??_main+0)+0+1),f
	goto	u357
	decfsz	((??_main+0)+0+2),f
	goto	u357
asmopt pop

	goto	l934
	global	start
	ljmp	start
	callstack 0
	line	42
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_keyScan

;; *************** function _keyScan *****************
;; Defined at:
;;		line 71 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    6[BANK0 ] int 
;;  i               2    4[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_LcdCommand
;;		_LcdData
;;		_LcdOutput
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	71
global __ptext1
__ptext1:	;psect for function _keyScan
psect	text1
	file	"main.c"
	line	71
	
_keyScan:	
;incstack = 0
	callstack 5
; Regs used in _keyScan: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	73
	
l880:	
;main.c: 73: 
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(_value)
	
l882:	
	movlw	low(0F0h)
	andwf	(_value),f
	line	75
;main.c: 75:             LcdOutput(j);
	goto	l930
	line	78
	
l884:	
;main.c: 78:         case 0xB0:
	movlw	low(080h)
	fcall	_LcdCommand
	line	80
	
l886:	
;main.c: 80:                 j--;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(keyScan@i)
	clrf	(keyScan@i+1)
	line	82
	
l892:	
;main.c: 81: ;main.c: 82:             LcdCommand(0x88);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(keyScan@i),w
	addlw	low(_Array|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_LcdData
	line	83
	
l894:	
;main.c: 83:             LcdOutput(j);
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(keyScan@i),f
	skipnc
	incf	(keyScan@i+1),f
	movlw	0
	addwf	(keyScan@i+1),f
	
l896:	
	movf	(keyScan@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u315
	movlw	0Fh
	subwf	(keyScan@i),w
u315:

	skipc
	goto	u311
	goto	u310
u311:
	goto	l892
u310:
	line	85
	
l898:	
;main.c: 85: 
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(keyScan@i_72)
	clrf	(keyScan@i_72+1)
	line	87
	
l904:	
;main.c: 86:         case 0x70:;main.c: 87:             LcdCommand(0x88);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(keyScan@i_72),w
	addlw	088h
	fcall	_LcdCommand
	line	88
;main.c: 88:             LcdOutput(0);
	movlw	low(030h)
	fcall	_LcdData
	line	89
	
l906:	
;main.c: 89:             break;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(keyScan@i_72),f
	skipnc
	incf	(keyScan@i_72+1),f
	movlw	0
	addwf	(keyScan@i_72+1),f
	
l908:	
	movf	(keyScan@i_72+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u325
	movlw	04h
	subwf	(keyScan@i_72),w
u325:

	skipc
	goto	u321
	goto	u320
u321:
	goto	l904
u320:
	goto	l65
	line	93
	
l910:	
;main.c: 93:             break;
	movlw	013h
	subwf	(_j+1),w
	movlw	088h
	skipnz
	subwf	(_j),w
	skipnc
	goto	u331
	goto	u330
u331:
	goto	l914
u330:
	line	94
	
l912:	
;main.c: 94:     }
	movlw	01h
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	0
	addwf	(_j+1),f
	line	96
	
l914:	
;main.c: 96: 
	movlw	low(088h)
	fcall	_LcdCommand
	line	97
	
l916:	
;main.c: 97: 
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_j+1),w
	movwf	(LcdOutput@i+1)
	movf	(_j),w
	movwf	(LcdOutput@i)
	fcall	_LcdOutput
	line	98
;main.c: 98: 
	goto	l65
	line	101
	
l918:	
;main.c: 101:     uint8_t d1, d2, d3, d4;
	movlw	0
	subwf	(_j+1),w
	movlw	02h
	skipnz
	subwf	(_j),w
	skipc
	goto	u341
	goto	u340
u341:
	goto	l922
u340:
	line	102
	
l920:	
;main.c: 102:     d4 = (uint8_t)(i / 1000);
	movlw	01h
	subwf	(_j),f
	movlw	0
	skipc
	decf	(_j+1),f
	subwf	(_j+1),f
	line	104
	
l922:	
;main.c: 104:     d2 = (uint8_t)((i % 100) / 10);
	movlw	low(088h)
	fcall	_LcdCommand
	goto	l916
	line	109
	
l926:	
;main.c: 109: 
	movlw	low(088h)
	fcall	_LcdCommand
	line	110
;main.c: 110:     LcdData(0x30 + d3);
	movlw	0
	movwf	(LcdOutput@i)
	movwf	(LcdOutput@i+1)
	fcall	_LcdOutput
	line	111
;main.c: 111: 
	goto	l65
	line	116
	
l930:	
	movf	(_value),w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 112 to 224
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	112^0	; case 112
	skipnz
	goto	l926
	xorlw	176^112	; case 176
	skipnz
	goto	l918
	xorlw	208^176	; case 208
	skipnz
	goto	l910
	xorlw	224^208	; case 224
	skipnz
	goto	l884
	goto	l65
	asmopt pop

	line	117
	
l65:	
	return
	callstack 0
GLOBAL	__end_of_keyScan
	__end_of_keyScan:
	signat	_keyScan,89
	global	_LcdOutput

;; *************** function _LcdOutput *****************
;; Defined at:
;;		line 121 in file "main.c"
;; Parameters:    Size  Location     Type
;;  i               2   12[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  d4              1    3[BANK0 ] unsigned char 
;;  d3              1    2[BANK0 ] unsigned char 
;;  d2              1    1[BANK0 ] unsigned char 
;;  d1              1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_LcdCommand
;;		_LcdData
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_keyScan
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	121
global __ptext2
__ptext2:	;psect for function _LcdOutput
psect	text2
	file	"main.c"
	line	121
	
_LcdOutput:	
;incstack = 0
	callstack 5
; Regs used in _LcdOutput: [wreg+status,2+status,0+pclath+cstack]
	line	124
	
l842:	
;main.c: 121:     PORTD = i;;main.c: 122:     PORTC |= (0x1 << 0);;main.c: 123:     _delay((unsigned long)((100)*(20000000/4000.0)));;main.c: 124:     PORTC &= ~(0x1 << 0);
	movlw	0E8h
	movwf	(___lwdiv@divisor)
	movlw	03h
	movwf	((___lwdiv@divisor))+1
	movf	(LcdOutput@i+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(LcdOutput@i),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LcdOutput@d4)
	line	125
;main.c: 125: }
	movlw	064h
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(LcdOutput@i+1),w
	movwf	(___lwmod@dividend+1)
	movf	(LcdOutput@i),w
	movwf	(___lwmod@dividend)
	movlw	0E8h
	movwf	(___lwmod@divisor)
	movlw	03h
	movwf	((___lwmod@divisor))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___lwmod)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LcdOutput@d3)
	line	126
;main.c: 126: 
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(LcdOutput@i+1),w
	movwf	(___lwmod@dividend+1)
	movf	(LcdOutput@i),w
	movwf	(___lwmod@dividend)
	movlw	064h
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___lwmod)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LcdOutput@d2)
	line	127
;main.c: 127: 
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(LcdOutput@i+1),w
	movwf	(___lwmod@dividend+1)
	movf	(LcdOutput@i),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LcdOutput@d1)
	line	129
;main.c: 129: {
	movlw	low(088h)
	fcall	_LcdCommand
	line	130
;main.c: 130:     PORTC &= ~(0x1 << 3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LcdOutput@d4),w
	addlw	030h
	fcall	_LcdData
	line	132
;main.c: 132:     PORTC |= (0x1 << 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LcdOutput@d3),w
	addlw	030h
	fcall	_LcdData
	line	134
;main.c: 134:     PORTC &= ~(0x1 << 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LcdOutput@d2),w
	addlw	030h
	fcall	_LcdData
	line	136
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LcdOutput@d1),w
	addlw	030h
	fcall	_LcdData
	line	137
	
l68:	
	return
	callstack 0
GLOBAL	__end_of_LcdOutput
	__end_of_LcdOutput:
	signat	_LcdOutput,4217
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "D:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LcdOutput
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\lwmod.c"
	line	5
global __ptext3
__ptext3:	;psect for function ___lwmod
psect	text3
	file	"D:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l820:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u251
	goto	u250
u251:
	goto	l838
u250:
	line	13
	
l822:	
	movlw	01h
	movwf	(___lwmod@counter)
	line	14
	goto	l828
	line	15
	
l824:	
	movlw	01h
	
u265:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u265
	line	16
	
l826:	
	movlw	low(01h)
	addwf	(___lwmod@counter),f
	line	14
	
l828:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u271
	goto	u270
u271:
	goto	l824
u270:
	line	19
	
l830:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u285
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u285:
	skipc
	goto	u281
	goto	u280
u281:
	goto	l834
u280:
	line	20
	
l832:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l834:	
	movlw	01h
	
u295:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u295
	line	22
	
l836:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u301
	goto	u300
u301:
	goto	l830
u300:
	line	24
	
l838:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l450:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "D:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[COMMON] unsigned int 
;;  dividend        2    7[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[COMMON] unsigned int 
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LcdOutput
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\lwdiv.c"
	line	5
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"D:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l794:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l796:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u181
	goto	u180
u181:
	goto	l816
u180:
	line	15
	
l798:	
	movlw	01h
	movwf	(___lwdiv@counter)
	line	16
	goto	l804
	line	17
	
l800:	
	movlw	01h
	
u195:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u195
	line	18
	
l802:	
	movlw	low(01h)
	addwf	(___lwdiv@counter),f
	line	16
	
l804:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u201
	goto	u200
u201:
	goto	l800
u200:
	line	21
	
l806:	
	movlw	01h
	
u215:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u215
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u225
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u225:
	skipc
	goto	u221
	goto	u220
u221:
	goto	l812
u220:
	line	23
	
l808:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l810:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l812:	
	movlw	01h
	
u235:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u235
	line	27
	
l814:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l806
u240:
	line	29
	
l816:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l440:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_LcdData

;; *************** function _LcdData *****************
;; Defined at:
;;		line 140 in file "main.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyScan
;;		_LcdOutput
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	140
global __ptext5
__ptext5:	;psect for function _LcdData
psect	text5
	file	"main.c"
	line	140
	
_LcdData:	
;incstack = 0
	callstack 5
; Regs used in _LcdData: [wreg+status,2+status,0]
;LcdData@i stored from wreg
	movwf	(LcdData@i)
	line	142
	
l786:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(3/8),(3)&7	;volatile
	line	143
	
l788:	
	movf	(LcdData@i),w
	movwf	(8)	;volatile
	line	144
	
l790:	
	bsf	(7)+(0/8),(0)&7	;volatile
	line	145
	asmopt push
asmopt off
movlw  3
movwf	((??_LcdData+0)+0+2)
movlw	138
movwf	((??_LcdData+0)+0+1)
	movlw	85
movwf	((??_LcdData+0)+0)
	u367:
decfsz	((??_LcdData+0)+0),f
	goto	u367
	decfsz	((??_LcdData+0)+0+1),f
	goto	u367
	decfsz	((??_LcdData+0)+0+2),f
	goto	u367
	nop2
asmopt pop

	line	146
	
l792:	
	movlw	low(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	147
	
l71:	
	return
	callstack 0
GLOBAL	__end_of_LcdData
	__end_of_LcdData:
	signat	_LcdData,4217
	global	_Lcdinit

;; *************** function _Lcdinit *****************
;; Defined at:
;;		line 45 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_LcdCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	45
global __ptext6
__ptext6:	;psect for function _Lcdinit
psect	text6
	file	"main.c"
	line	45
	
_Lcdinit:	
;incstack = 0
	callstack 6
; Regs used in _Lcdinit: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l844:	
;main.c: 47: }
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	48
;main.c: 48: 
	clrf	(136)^080h	;volatile
	line	49
	
l846:	
;main.c: 49: void keyScan(void)
	movlw	0F0h
	movwf	(134)^080h	;volatile
	line	51
	
l848:	
;main.c: 51:     value = PORTB & 0xF0;
	movlw	low(07Fh)
	andwf	(129)^080h,f	;volatile
	line	52
	
l850:	
;main.c: 52: 
	asmopt push
asmopt off
movlw  3
movwf	((??_Lcdinit+0)+0+2)
movlw	138
movwf	((??_Lcdinit+0)+0+1)
	movlw	85
movwf	((??_Lcdinit+0)+0)
	u377:
decfsz	((??_Lcdinit+0)+0),f
	goto	u377
	decfsz	((??_Lcdinit+0)+0+1),f
	goto	u377
	decfsz	((??_Lcdinit+0)+0+2),f
	goto	u377
	nop2
asmopt pop

	line	55
	
l852:	
;main.c: 55:         case 0xE0:
	movlw	low(030h)
	fcall	_LcdCommand
	line	56
	
l854:	
;main.c: 56:                 LcdCommand(0x80);
	asmopt push
asmopt off
movlw  3
movwf	((??_Lcdinit+0)+0+2)
movlw	138
movwf	((??_Lcdinit+0)+0+1)
	movlw	85
movwf	((??_Lcdinit+0)+0)
	u387:
decfsz	((??_Lcdinit+0)+0),f
	goto	u387
	decfsz	((??_Lcdinit+0)+0+1),f
	goto	u387
	decfsz	((??_Lcdinit+0)+0+2),f
	goto	u387
	nop2
asmopt pop

	line	57
	
l856:	
;main.c: 57: 
	movlw	low(030h)
	fcall	_LcdCommand
	line	58
	
l858:	
;main.c: 58:                 for(int i = 0; i < 15; i++)
	asmopt push
asmopt off
movlw  3
movwf	((??_Lcdinit+0)+0+2)
movlw	138
movwf	((??_Lcdinit+0)+0+1)
	movlw	85
movwf	((??_Lcdinit+0)+0)
	u397:
decfsz	((??_Lcdinit+0)+0),f
	goto	u397
	decfsz	((??_Lcdinit+0)+0+1),f
	goto	u397
	decfsz	((??_Lcdinit+0)+0+2),f
	goto	u397
	nop2
asmopt pop

	line	59
	
l860:	
;main.c: 59:                 {
	movlw	low(030h)
	fcall	_LcdCommand
	line	60
	
l862:	
;main.c: 60:                     LcdData(Array[i]);
	asmopt push
asmopt off
movlw  3
movwf	((??_Lcdinit+0)+0+2)
movlw	138
movwf	((??_Lcdinit+0)+0+1)
	movlw	85
movwf	((??_Lcdinit+0)+0)
	u407:
decfsz	((??_Lcdinit+0)+0),f
	goto	u407
	decfsz	((??_Lcdinit+0)+0+1),f
	goto	u407
	decfsz	((??_Lcdinit+0)+0+2),f
	goto	u407
	nop2
asmopt pop

	line	61
	
l864:	
;main.c: 61:                 }
	movlw	low(038h)
	fcall	_LcdCommand
	line	62
	
l866:	
;main.c: 62: 
	asmopt push
asmopt off
movlw  3
movwf	((??_Lcdinit+0)+0+2)
movlw	138
movwf	((??_Lcdinit+0)+0+1)
	movlw	85
movwf	((??_Lcdinit+0)+0)
	u417:
decfsz	((??_Lcdinit+0)+0),f
	goto	u417
	decfsz	((??_Lcdinit+0)+0+1),f
	goto	u417
	decfsz	((??_Lcdinit+0)+0+2),f
	goto	u417
	nop2
asmopt pop

	line	63
	
l868:	
;main.c: 63:                 for(int i = 0; i < 4; i++)
	movlw	low(0Ch)
	fcall	_LcdCommand
	line	64
	
l870:	
;main.c: 64:                 {
	asmopt push
asmopt off
movlw  3
movwf	((??_Lcdinit+0)+0+2)
movlw	138
movwf	((??_Lcdinit+0)+0+1)
	movlw	85
movwf	((??_Lcdinit+0)+0)
	u427:
decfsz	((??_Lcdinit+0)+0),f
	goto	u427
	decfsz	((??_Lcdinit+0)+0+1),f
	goto	u427
	decfsz	((??_Lcdinit+0)+0+2),f
	goto	u427
	nop2
asmopt pop

	line	65
	
l872:	
;main.c: 65:                     LcdCommand((uint8_t)0x88 + (uint8_t)i);
	movlw	low(01h)
	fcall	_LcdCommand
	line	66
	
l874:	
;main.c: 66:                     LcdData(0x30 + 0);
	asmopt push
asmopt off
movlw  3
movwf	((??_Lcdinit+0)+0+2)
movlw	138
movwf	((??_Lcdinit+0)+0+1)
	movlw	85
movwf	((??_Lcdinit+0)+0)
	u437:
decfsz	((??_Lcdinit+0)+0),f
	goto	u437
	decfsz	((??_Lcdinit+0)+0+1),f
	goto	u437
	decfsz	((??_Lcdinit+0)+0+2),f
	goto	u437
	nop2
asmopt pop

	line	67
	
l876:	
;main.c: 67:                 }
	movlw	low(06h)
	fcall	_LcdCommand
	line	68
	
l878:	
;main.c: 68:             break;
	asmopt push
asmopt off
movlw  3
movwf	((??_Lcdinit+0)+0+2)
movlw	138
movwf	((??_Lcdinit+0)+0+1)
	movlw	85
movwf	((??_Lcdinit+0)+0)
	u447:
decfsz	((??_Lcdinit+0)+0),f
	goto	u447
	decfsz	((??_Lcdinit+0)+0+1),f
	goto	u447
	decfsz	((??_Lcdinit+0)+0+2),f
	goto	u447
	nop2
asmopt pop

	line	69
	
l49:	
	return
	callstack 0
GLOBAL	__end_of_Lcdinit
	__end_of_Lcdinit:
	signat	_Lcdinit,89
	global	_LcdCommand

;; *************** function _LcdCommand *****************
;; Defined at:
;;		line 150 in file "main.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcdinit
;;		_keyScan
;;		_LcdOutput
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	150
global __ptext7
__ptext7:	;psect for function _LcdCommand
psect	text7
	file	"main.c"
	line	150
	
_LcdCommand:	
;incstack = 0
	callstack 5
; Regs used in _LcdCommand: [wreg+status,2+status,0]
;LcdCommand@i stored from wreg
	movwf	(LcdCommand@i)
	line	152
	
l778:	
	movlw	low(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	153
	
l780:	
	movf	(LcdCommand@i),w
	movwf	(8)	;volatile
	line	154
	
l782:	
	bsf	(7)+(0/8),(0)&7	;volatile
	line	155
	
l784:	
	asmopt push
asmopt off
movlw  3
movwf	((??_LcdCommand+0)+0+2)
movlw	138
movwf	((??_LcdCommand+0)+0+1)
	movlw	85
movwf	((??_LcdCommand+0)+0)
	u457:
decfsz	((??_LcdCommand+0)+0),f
	goto	u457
	decfsz	((??_LcdCommand+0)+0+1),f
	goto	u457
	decfsz	((??_LcdCommand+0)+0+2),f
	goto	u457
	nop2
asmopt pop

	line	156
	movlw	low(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	157
	
l74:	
	return
	callstack 0
GLOBAL	__end_of_LcdCommand
	__end_of_LcdCommand:
	signat	_LcdCommand,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
