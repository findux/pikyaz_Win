
glcdsil  macro
    movlw     0x01      ; Clear display
    instw4
    endm
glcdgiris macro 
    bekle   20           ; Wait 15 msecs
    movlw   0x30              ; Send the Reset Instruction
    movwf   lcdport           ;
    bsf     lcdport, e
    nop
    bcf     lcdport, e
    nop        ; Pulse LCD_E
    bekle   20
    bsf     lcdport, e
    nop
    bcf     lcdport, e
    nop        ; Pulse LCD_E
    bekle   20
    bsf     lcdport, e
    nop
    bcf     lcdport, e
    nop            ; Pulse LCD_E
    bekle   20
    movlw   0x10                  ; Send the Data Length Specification
    movwf   lcdport              ;
    bsf     lcdport, e
    nop
    bcf     lcdport, e
    nop         ; Pulse LCD_E
    bekle   20
    movlw   0x028             ; Set Interface Length
    glcdinstw4
    movlw   0x10              ; Turn Off Display
    glcdinstw4
    movlw   0x001           ; Clear Display RAM
    glcdinstw4
    movlw   0x6             ; Set Cursor Movement
    glcdinstw4
    movlw   0xC             ; Turn on Display/Cursor
    glcdinstw4
    gLCD_Clr        ; Clear the LCD
    movlw ' '
    gLCD_Char
    glcdsil
    endm
glcdinstw4 macro
    movwf   LCDTemp           ;Temp storage
    swapf   LCDTemp,1
    movf    LCDTemp,0         ;Now W also holds the data
    andlw   b'00001111'       ; get upper nibble
    movwf   lcdport         ; send data to lcd
    bcf     lcdport, rs
    bsf     lcdport, e
    nop
    bcf     lcdport, e
    nop
    swapf   LCDTemp,0         ;get lower nibble to W
    andlw   b'00001111'
    movwf   lcdport         ;Write to LCD
    bcf     lcdport, rs
    bsf     lcdport, e
    nop   
    bcf     lcdport, e   ;end of lower nibble
    bekle     10
    endm
gLCD_CharD  macro
    addlw     0x30            ; add 0x30 to convert to ASCII
    LCD_Char
    endm
gLCD_Char     macro 
    movwf     LCDTemp
    swapf     LCDTemp,1
    movf      LCDTemp,0 
    andlw     0x0f
    movwf     lcdport
    bsf       lcdport, rs
    bsf         lcdport, e 
    nop  
    bcf         lcdport, e
    nop 
	nop
    swapf     LCDTemp, w
    andlw     0x0f
    movwf     lcdport
    bsf       lcdport, rs
    bsf         lcdport, e 
    nop  
    bcf         lcdport, e
    nop  
    bekle     10
    nop 
    endm

gLCD_L1  macro
    movlw       0x80        ; move to 2nd row, first column
    glcdinstw4
    endm
gLCD_L2  macro
    movlw       0xc0       ; move to 2nd row, first column
    glcdinstw4
    endm
gLCD_Line1W  macro
    addlw       0x80      ;move to 1st row, column W
    glcdinstw4
    endm
gLCD_Line2W  macro
    addlw       0xc0      ;move to 2nd row, column W
    glcdinstw4
    endm
gLCD_L3  macro
    addlw       0x94        ; move to 2nd row, first column
    glcdinstw4
    endm 
gLCD_L4  macro
    addlw       0xD4      ; move to 2nd row, first column
    glcdinstw4
    endm
glcdkursorac  macro
    movlw       0x0d
    glcdinstw4
    endm
glcdkursorkapa  macro
    movlw       0x0c
    glcdinstw4
    endm
gLCD_Clr    macro
    movlw       0x01      ; Clear display
    glcdinstw4
    endm
harfyaz macro sayi
    movlw   sayi
    gLCD_Char
    endm
glcdyaz macro sayi
    movlw   sayi
    gLCD_Char
    endm
glcddeg macro deg
    movf   deg,0
    gLCD_Char
    endm

glcdbas macro  deg
    yukle deg,REGA0
    glcdBIN2DEC
    glcdrakamyaz
    endm
glcdBIN2DEC	macro  ;REGA=> onluk paket.... hex den paket bcd 
local B2bcd2,B2bcd3
	glcdclrdig
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

glcdkazi macro digit
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
      gLCD_CharD
	swapf     digit, w
    andlw     0x0f
	 gLCD_CharD
kon
	endm

glcdrakamyaz macro
      	clrf key
	glcdkazi DIGIT5
	glcdkazi DIGIT4
	glcdkazi DIGIT3
	glcdkazi DIGIT2
	glcdkazi DIGIT1
      endm
    
glcdkonum macro sayi1,sayi2
      if (sayi1 == .1)
            movlw  sayi2
            addlw     0x80      ;move to 1st row, column W
            glcdinstw4
      endif
      if (sayi1 == .2)
            movlw  sayi2
            addlw     0xc0      ;move to 2st row, column W
            glcdinstw4
          endif
      if (sayi1 == .3)
            movlw  sayi2
            addlw     0x94       ;move to 3st row, column W
            glcdinstw4
      endif
      if (sayi1 == .4)
            movlw  sayi2
            addlw     0xD4       ;move to 4st row, column W
            glcdinstw4
      endif
    endm
glcdkonum1 macro sayi1,deg2
      if (sayi1 == .1)
            movf  deg2,0
            addlw     0x80      ;move to 1st row, column W
            glcdinstw4
      endif
      if (sayi1 == .2)
            movf  deg2,0
            addlw     0xc0      ;move to 2st row, column W
            glcdinstw4
          endif
      if (sayi1 == .3)
            movf  deg2,0
            addlw     0x94       ;move to 3st row, column W
            glcdinstw4
      endif
      if (sayi1 == .4)
            movf  deg2,0
            addlw     0xD4       ;move to 4st row, column W
            glcdinstw4
      endif
    endm
glcdkonum2 macro deg1,sayi2
local ikk,ukk,dkk,son
      movf deg1,0
      xorlw  1
      skpz
      goto ikk
            movlw  sayi2
            addlw     0x80      ;move to 1st row, column W
            glcdinstw4
            goto son
ikk
     movf deg1,0
      xorlw  2
      skpz
      goto ukk
            movlw  sayi2
            addlw     0xc0      ;move to 2st row, column W
            glcdinstw4
          goto son
ukk
     movf deg1,0
      xorlw  3
      skpz
      goto dkk
            movlw  sayi2
            addlw     0x94       ;move to 3st row, column W
            glcdinstw4
      goto son
dkk
            movlw  sayi2
            addlw     0xD4       ;move to 4st row, column W
            glcdinstw4
son
    endm
    
glcdkonum3 macro deg1,deg2
local ikk,ukk,dkk,son
      movf deg1,0
      xorlw  1
      skpz
      goto ikk
            movf  deg2,0
            addlw     0x80      ;move to 1st row, column W
            glcdinstw4
            goto son
ikk
     movf deg1,0
      xorlw  2
      skpz
      goto ukk
            movf  deg2,0
            addlw     0xc0      ;move to 2st row, column W
            glcdinstw4
          goto son
ukk
     movf deg1,0
      xorlw  3
      skpz
      goto dkk
            movf  deg2,0
            addlw     0x94       ;move to 3st row, column W
            glcdinstw4
      goto son
dkk
            movf  deg2,0
            addlw     0xD4       ;move to 4st row, column W
            glcdinstw4
son
    endm    
glcdclrdig macro
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
    
