   variable  rsmii
   variable  ydk
lcdsil  macro
    movlw     0x01      ; Clear display
    instw4
    endm
lcdgiris macro 
    bekle   20           ; Wait 15 msecs
    movlw   0x03              ; Send the Reset Instruction
    movwf   lcdport           ;
     bsf         lcdport, e 
    nop  
    bcf         lcdport, e
    nop            ; Pulse LCD_E
    bekle   20
     bsf         lcdport, e 
    nop  
    bcf         lcdport, e
    nop            ; Pulse LCD_E
    bekle   20
     bsf         lcdport, e 
    nop  
    bcf         lcdport, e
    nop              ; Pulse LCD_E
    bekle   20
    movlw   0x01                  ; Send the Data Length Specification
    movwf   lcdport              ;
     bsf         lcdport, e 
    nop  
    bcf         lcdport, e
    nop              ; Pulse LCD_E
    bekle   20
    movlw   0x028             ; Set Interface Length
    instw4
    movlw   0x10              ; Turn Off Display
    instw4
    movlw   0x001           ; Clear Display RAM
    instw4
    movlw   0x6             ; Set Cursor Movement
    instw4
    movlw   0xC             ; Turn on Display/Cursor
    instw4
    LCD_Clr        ; Clear the LCD
    movlw ' '
    LCD_Char
    lcdsil
    endm
instw4 macro
    movwf   LCDTemp           ;Temp storage
    ;swapf   LCDTemp,1
    movf    LCDTemp,0         ;Now W also holds the data
    andlw   0xf0       ; get upper nibble
    movwf   lcdport         ; send data to lcd
    bcf     lcdport, rs
    bsf     lcdport, e
    bekle 20
    bcf     lcdport, e
    bekle 20
    swapf   LCDTemp,0         ;get lower nibble to W
    andlw   0xf0
    movwf   lcdport         ;Write to LCD
    bcf     lcdport, rs
    bsf     lcdport, e
    bekle 20    
    bcf     lcdport, e   ;end of lower nibble
    bekle 20
    endm
LCD_CharD  macro
    addlw     0x30            ; add 0x30 to convert to ASCII
    LCD_Char
    endm
LCD_Char     macro 
    movwf     LCDTemp
    ;swapf     LCDTemp,1
    movf      LCDTemp,0 
    andlw     0xf0
    movwf     lcdport
    bsf       lcdport, rs
    bsf         lcdport, e 
    nop  
    bcf         lcdport, e
    nop 
    swapf     LCDTemp, w
    andlw     0xf0
    movwf     lcdport
    bsf       lcdport, rs
    bsf         lcdport, e 
    nop  
    bcf         lcdport, e
    nop  
    bekle     10
    nop 
    endm
LCD_L1  macro
    movlw       0x80        ; move to 2nd row, first column
    instw4
    endm
LCD_L2  macro
    movlw       0xc0       ; move to 2nd row, first column
    instw4
    endm
LCD_Line1W  macro
    addlw       0x80      ;move to 1st row, column W
    instw4
    endm
LCD_Line2W  macro
    addlw       0xc0      ;move to 2nd row, column W
    instw4
    endm
LCD_L3  macro
    addlw       0x94        ; move to 2nd row, first column
    instw4
    endm 
LCD_L4  macro
    addlw       0xD4      ; move to 2nd row, first column
    instw4
    endm
kursorac  macro
    movlw       0x0d
    instw4
    endm
kursorkapa  macro
    movlw       0x0c
    instw4
    endm
LCD_Clr    macro
    movlw       0x01      ; Clear display
    instw4
    endm

lcdyaz macro sayi
    movlw   sayi
    LCD_Char
    endm
lcddeg macro deg
    movf   deg,0
    LCD_Char
    endm

lcdbas macro  deg
    yukle deg,REGA0
    BIN2DEC
    rakamyaz
    endm
BIN2DEC	macro  ;REGA=> onluk paket.... hex den paket bcd 
local B2bcd2,B2bcd3
	clrdig
	MOVLW	.32		; 32-BIT
	MOVWF	key		; çevrim sayısı
B2bcd2	LFSR	FSR0,DIGIT1		; başlangıç
	MOVLW	.5
	MOVWF	bey
B2bcd3	MOVLW	0X33		
	ADDWF	INDF0,F		; alt ust 4 bit..
	BTFSC	INDF0,3		; toplam  > 7?
	ANDLW	0XF0		; alt 4bit >7 ?
	BTFSC	INDF0,7		; ust 4 bit > 7?
	ANDLW	0X0F		; ust 4 bit > 7 tmm.
	SUBWF	INDF0,F	; ust veya alt 4 bit  <= 7, kalanı çıkar..
	INCF	FSR0L,F		; sonraki nokta.
	DECFSZ	bey
	GOTO	B2bcd3
	
	RLCF	REGA0,F		; diğer bit..
	RLCF	REGA1,F
	RLCF	REGA2,F
	RLCF	REGA3,F
	RLCF	DIGIT1,F		; paket bcd...
	RLCF	DIGIT2,F
	RLCF	DIGIT3,F
	RLCF	DIGIT4,F
	RLCF	DIGIT5,F
	DECFSZ	key,F		; bitti mi ?
	GOTO	B2bcd2		; hayır devamm...
	endm		;

kazi macro digit
local kaz,kon
      btfsc  key,0
      goto kaz
      MOVF      digit,0;  digit 0 mı
      xorlw     0x0
      skpnz
      goto kon
kaz
      bsf  key,0
	swapf     digit,1
    movf      digit,0 
    andlw     0x0f
      LCD_CharD
	swapf     digit, w
    andlw     0x0f
	 LCD_CharD
kon
	endm

rakamyaz macro
      	clrf key
	kazi DIGIT5
	kazi DIGIT4
	kazi DIGIT3
	kazi DIGIT2
	kazi DIGIT1
      endm
    
lcdkonum macro sayi1,sayi2
      if (sayi1 == .1)
            movlw  sayi2
            addlw     0x80      ;move to 1st row, column W
            instw4
      endif
      if (sayi1 == .2)
            movlw  sayi2
            addlw     0xc0      ;move to 2st row, column W
            instw4
          endif
      if (sayi1 == .3)
            movlw  sayi2
            addlw     0x94       ;move to 3st row, column W
            instw4
      endif
      if (sayi1 == .4)
            movlw  sayi2
            addlw     0xD4       ;move to 4st row, column W
            instw4
      endif
    endm
lcdkonum1 macro sayi1,deg2
      if (sayi1 == .1)
            movf  deg2,0
            addlw     0x80      ;move to 1st row, column W
            instw4
      endif
      if (sayi1 == .2)
            movf  deg2,0
            addlw     0xc0      ;move to 2st row, column W
            instw4
          endif
      if (sayi1 == .3)
            movf  deg2,0
            addlw     0x94       ;move to 3st row, column W
            instw4
      endif
      if (sayi1 == .4)
            movf  deg2,0
            addlw     0xD4       ;move to 4st row, column W
            instw4
      endif
    endm
lcdkonum2 macro deg1,sayi2
local ikk,ukk,dkk,son
      movf deg1,0
      xorlw  1
      skpz
      goto ikk
            movlw  sayi2
            addlw     0x80      ;move to 1st row, column W
            instw4
            goto son
ikk
     movf deg1,0
      xorlw  2
      skpz
      goto ukk
            movlw  sayi2
            addlw     0xc0      ;move to 2st row, column W
            instw4
          goto son
ukk
     movf deg1,0
      xorlw  3
      skpz
      goto dkk
            movlw  sayi2
            addlw     0x94       ;move to 3st row, column W
            instw4
      goto son
dkk
            movlw  sayi2
            addlw     0xD4       ;move to 4st row, column W
            instw4
son
    endm
    
lcdkonum3 macro deg1,deg2
local ikk,ukk,dkk,son
      movf deg1,0
      xorlw  1
      skpz
      goto ikk
            movf  deg2,0
            addlw     0x80      ;move to 1st row, column W
            instw4
            goto son
ikk
     movf deg1,0
      xorlw  2
      skpz
      goto ukk
            movf  deg2,0
            addlw     0xc0      ;move to 2st row, column W
            instw4
          goto son
ukk
     movf deg1,0
      xorlw  3
      skpz
      goto dkk
            movf  deg2,0
            addlw     0x94       ;move to 3st row, column W
            instw4
      goto son
dkk
            movf  deg2,0
            addlw     0xD4       ;move to 4st row, column W
            instw4
son
    endm    
clrdig macro
    clrf    DSIGN
    clrf    DIGIT1
    clrf    DIGIT2
    clrf    DIGIT3
    clrf    DIGIT4
    clrf    DIGIT5
    clrf    REGB3
    clrf    REGB2
    clrf    REGB1
    clrf    REGB0
    clrf    key
    clrf    bey
    clrf    OUT
    clrf    dgdeg
    endm
    
