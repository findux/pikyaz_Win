
; keypad giriş 
   variable  keye
    
keyp macro deg
local bir,iki,uc,dort,bes,alti,yedi,sekiz,dokuz,sifir,aa,bb,cc,dd,yildiz,diyez,son
  clrf keylat
    ;movlw b'0111000'
    ;movwf keylat
    clrf keylat
    bsf keylat,y1
    bekle 50
    btfsc keyport,a1	; b4 0 mı?
    goto bir		;hayır bir 1 yaz
    btfsc keyport,a2	;b5  0 mı?
    goto iki		;hayır bir 2 yaz
    btfsc keyport,a3	; b6  0 mı?
    goto uc		;hayır bir 3 yaz
    btfsc keyport,a4	; b7  0 mı?
    goto aa		;hayır bir aa yaz
    
    ;movlw b'1011000'
    ;movwf keylat
    ;bekle 50
    clrf keylat
    bsf keylat,y2
    bekle 50
    btfsc keyport,a1
    goto dort
    btfsc keyport,a2
    goto bes
    btfsc keyport,a3
    goto alti
    btfsc keyport,a4
    goto bb
    
    ;movlw b'1101000'
    ;movwf keylat
    ;bekle 50
    clrf keylat
    bsf keylat,y3
    bekle 50
    btfsc keyport,a1
    goto yedi
    btfsc keyport,a2
    goto sekiz
    btfsc keyport,a3
    goto dokuz
    btfsc keyport,a4
    goto cc
    
    ;movlw b'1110000'
    ;movwf keylat
    ;bekle 50
    clrf keylat
    bsf keylat,y4
    bekle 50
    btfsc keyport,a1
    goto yildiz
    btfsc keyport,a2
    goto sifir
    btfsc keyport,a3
    goto diyez
    btfsc keyport,a4
    goto dd
    movlw 16
    goto son
bir
  movlw 1
    goto son
    
iki
    movlw 2
    goto son 
    
uc
    movlw 3
    goto son 
    
dort
    movlw 4
    goto son
    
bes
    movlw 5
    goto son
    
alti
    movlw 6
    goto son
    
yedi
    movlw 7
    goto son
    
sekiz
    movlw 8
    goto son
    
dokuz
    movlw 9
    goto son
    
sifir
    movlw 0
    goto son
    
aa
    movlw 'A'
    goto son
    
bb
    movlw 'B'
    goto son
    
cc
    movlw 'C'
    goto son
    
dd
    movlw 'D'
    goto son
    
yildiz
    movlw '*'
    goto son
    
diyez
    movlw '#'
    goto son
son
  
  movwf deg
  bekle 2500
    endm

keypad macro deg
local Chk_Keys,Keys,Key_Found
Chk_Keys   	movlw   0x00         	;wait until no key pressed 
      		movwf   keylat      	;set all output pins low 
      		movf   	keyport,   W 
      		andlw   0x0F         	;mask off high byte 
      		sublw   0x0F 
      		btfsc   STATUS, Z      	;test if any key pressed 
      		goto   	Keys         	;if none, read keys 
      		bekle 50
      		;goto   	Chk_Keys      	;else try again 

Keys
		Scan_Keys 
            	movlw   0x10         	;check for no key pressed 
            	subwf   key, w 
            	btfss   STATUS, Z 
            	goto    Key_Found 
      		bekle 50
      		goto   	Keys 
Key_Found   	
		movf    key, w 
      		andlw   0x0f 
      		call   	Key_Table      	;lookup key in table   
      		LCD_Char
      		movwf   deg         	;save back in key 
      		endm            	;key pressed now in W 

Scan_Keys  macro
local Scan,Press
		clrf    key 
      		movlw   0xF0         	;set all output lines high 
            	movwf   keylat 
            	movlw   0x04 
            	movwf   rows         	;set number of rows 
            	bcf     STATUS, C      	;put a 0 into carry 
Scan
		rrcf     keylat, f 
            	bsf     STATUS, C      	;follow the zero with ones 
;comment out next two lines for 4x3 numeric keypad. 
            	btfss   keyport, a4 
            	goto    Press 
            	incf    key, f 
            	btfss   keyport, a3 
            	goto    Press 
            	incf    key, f 
            	btfss   keyport, a2 
            	goto    Press 
            	incf    key, f 
            	btfss   keyport, a1 
            	goto    Press 
            	incf    key, f 
            	decfsz  rows, f 
            	goto    Scan 
Press       	
		endm 


keypadtara macro tus
local _gbir,_giki,_guc,_gdort,_gbes,_galti,_gyedi,_gsekiz,_gdokuz,_gsifir,_ga,_gb,_gc,_gd,_gyildiz,_gdiyez,don
    clrf keylat           ;1. satýr aktif
    bcf keylat,y1
    bsf keylat,y2
    bsf keylat,y3
    bsf keylat,y4
    
    bekle 	50
    btfss    keyport,a1            ;0. sütundaki tuþa basýlý mý?
    call  _giki
    btfss    keyport,a2           ;1. sütundaki tuþ basýlý mý?
    GOTO  _gbes
    btfss    keyport,a3           ;2. sütundaki tuþ basýlý mý?
    GOTO  _gsekiz
    btfss    keyport,a4            ;3. sütundaki tuþa basýlý mý?
    GOTO  _gsifir

    clrf keylat           ;1. satýr aktif
    bsf keylat,y1
    bcf keylat,y2
    bsf keylat,y3
    bsf keylat,y4
    
    bekle 	50
    btfss    keyport,a1            ;0. sütundaki tuþa basýlý mý?
    GOTO  _gbir
    btfss    keyport,a2           ;1. sütundaki tuþ basýlý mý?
    GOTO  _gdort
    btfss    keyport,a3           ;2. sütundaki tuþ basýlý mý?
    GOTO  _gyedi
    btfss    keyport,a4            ;3. sütundaki tuþa basýlý mý?
    GOTO  _gyildiz
    
    clrf keylat           ;1. satýr aktif
    bsf keylat,y1
    bsf keylat,y2
    bcf keylat,y3
    bsf keylat,y4
    bekle 	50
    btfss    keyport,a1            ;0. sütundaki tuþa basýlý mý?
    GOTO  _guc
    btfss    keyport,a2            ;1. sütundaki tuþ basýlý mý?
    GOTO  _galti
    btfss    keyport,a3            ;2. sütundaki tuþ basýlý mý?
    GOTO  _gdokuz
    btfss    keyport,a4            ;3. sütundaki tuþa basýlý mý?
    GOTO  _gdiyez

    clrf keylat           ;1. satýr aktif
    bsf keylat,y1
    bsf keylat,y2
    bsf keylat,y3
    bcf keylat,y4
    bekle 	50
    btfss    keyport,a1            ;0. sütundaki tuþa basýlý mý?
    GOTO  _ga
    btfss    keyport,a2            ;1. sütundaki tuþ basýlý mý?
    GOTO  _gb
    btfss    keyport,a3            ;2. sütundaki tuþ basýlý mý?
    GOTO  _gc
    btfss    keyport,a4            ;3. sütundaki tuþa basýlý mý?
    GOTO  _gd
    movlw 'F'
    goto  don
_gbir
    movlw 1
    movwf    tus
    LCD_CharD
    goto  don
_gsifir
    movlw 0
    movwf    tus
    LCD_CharD
    GOTO     don
_gdokuz
    movlw 9
    movwf    tus
    LCD_CharD
    goto  don
_giki
    movlw 2
    movwf    tus
    LCD_CharD
    goto  don
_gd
    movlw D
    movwf    tus
    LCD_CharD
    GOTO     don
_gdort
    movlw 4
    movwf    tus
    LCD_CharD
    goto  don
_guc
    movlw 3
    movwf    tus
    LCD_CharD
        goto  don
_gdiyez
    movlw '#'
    movwf    tus
    LCD_CharD
    GOTO     don
_galti
    movlw 6
    movwf    tus
    LCD_CharD
    goto  don
_gsekiz
    movlw 8
    movwf    tus
    LCD_CharD
    goto  don
_gyedi
    movlw 7
    movwf    tus
    LCD_CharD
        goto  don
_gyildiz
    movlw '*'
    movwf    tus
    LCD_CharD
    GOTO     don
_gbes
    movlw 5
    movwf    tus
    LCD_CharD
    goto  don
_gb
    movlw 'B'
    movwf    tus
    LCD_CharD
    GOTO     don
_gc
    movlw 'C'
    movwf    tus
    LCD_CharD
    GOTO     don
_ga
    movlw 'A'
    movwf    tus
    LCD_CharD
    GOTO     don
don
    
    endm