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
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_value
	global	_INTCON
_INTCON	set	0xB
	global	_PORTD
_PORTD	set	0x8
	global	_PORTC
_PORTC	set	0x7
	global	_PORTB
_PORTB	set	0x6
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
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
	file	"dist/default/production\Class_11_Task_Pro_Ext_Interrupt.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_value:
       ds      1

	file	"dist/default/production\Class_11_Task_Pro_Ext_Interrupt.X.production.s"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_main:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
	ds	2
??_main:	; 1 bytes @ 0x2
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       6
;!    BANK0            80      0       0
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
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 3     3      0       0
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _ISR                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _ISR (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14      5       6     42.9%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       6      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 24 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	24
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	24
	
_main:	
;incstack = 0
	callstack 7
; Regs used in _main: [wreg+status,2+status,0]
	line	27
	
l579:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(134)^080h+(0/8),(0)&7	;volatile
	line	28
	
l581:	
	movlw	low(0FEh)
	andwf	(135)^080h,f	;volatile
	line	29
	movlw	low(0FEh)
	andwf	(136)^080h,f	;volatile
	line	32
	
l583:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	33
	
l585:	
	clrf	(7)	;volatile
	line	34
	
l587:	
	clrf	(8)	;volatile
	line	37
	
l589:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(129)^080h+(6/8),(6)&7	;volatile
	line	38
	
l591:	
	bsf	(11)+(4/8),(4)&7	;volatile
	line	39
	
l593:	
	bsf	(11)+(6/8),(6)&7	;volatile
	line	40
	
l595:	
	bsf	(11)+(7/8),(7)&7	;volatile
	line	45
	
l597:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(0/8),(0)&7	;volatile
	line	46
	
l599:	
	asmopt push
asmopt off
movlw  26
movwf	((??_main+0)+0+2)
movlw	94
movwf	((??_main+0)+0+1)
	movlw	110
movwf	((??_main+0)+0)
	u37:
decfsz	((??_main+0)+0),f
	goto	u37
	decfsz	((??_main+0)+0+1),f
	goto	u37
	decfsz	((??_main+0)+0+2),f
	goto	u37
	nop
asmopt pop

	line	48
	
l601:	
	movlw	low(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	49
	
l603:	
	asmopt push
asmopt off
movlw  26
movwf	((??_main+0)+0+2)
movlw	94
movwf	((??_main+0)+0+1)
	movlw	110
movwf	((??_main+0)+0)
	u47:
decfsz	((??_main+0)+0),f
	goto	u47
	decfsz	((??_main+0)+0+1),f
	goto	u47
	decfsz	((??_main+0)+0+2),f
	goto	u47
	nop
asmopt pop

	goto	l597
	global	start
	ljmp	start
	callstack 0
	line	51
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 54 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	54
global __ptext1
__ptext1:	;psect for function _ISR
psect	text1
	file	"main.c"
	line	54
	
_ISR:	
;incstack = 0
	callstack 7
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text1
	line	56
	
i1l605:	
	btfss	(11),(1)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l35
u1_20:
	line	58
	
i1l607:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(_value)
	line	60
	
i1l609:	
	btfss	(_value),(0)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l34
u2_20:
	line	62
	
i1l611:	
	movlw	low(01h)
	xorwf	(7),f	;volatile
	line	63
	
i1l34:	
	line	65
	movlw	low(0FDh)
	andwf	(11),f	;volatile
	line	67
	
i1l35:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
