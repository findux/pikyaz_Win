
; keypad giriş 
   variable  keye
keyp macro deg
local bir,iki,uc,dort,bes,alti,yedi,sekiz,dokuz,sifir,aa,bb,cc,dd,yildiz,diyez,son
  movf keyport,0
  movwf keye
  andlw 0xF0
  
  clrf keylat
    ;movlw b'0111000'
    ;movwf keylat
    clrf keylat
    bsf keylat,a1
    bekle 50
    btfsc keyport,y1	; b4 0 mı?
    goto bir		;hayır bir 1 yaz
    btfsc keyport,y2	;b5  0 mı?
    goto iki		;hayır bir 2 yaz
    btfsc keyport,y3	; b6  0 mı?
    goto uc		;hayır bir 3 yaz
    btfsc keyport,y4	; b7  0 mı?
    goto aa		;hayır bir aa yaz
    
    ;movlw b'1011000'
    ;movwf keylat
    ;bekle 50
    clrf keylat
    bsf keylat,a2
    bekle 50
    btfsc keyport,y1
    goto dort
    btfsc keyport,y2
    goto bes
    btfsc keyport,y3
    goto alti
    btfsc keyport,y4
    goto bb
    
    ;movlw b'1101000'
    ;movwf keylat
    ;bekle 50
    clrf keylat
    bsf keylat,a3
    bekle 50
    btfsc keyport,y1
    goto yedi
    btfsc keyport,y2
    goto sekiz
    btfsc keyport,y3
    goto dokuz
    btfsc keyport,y4
    goto cc
    
    ;movlw b'1110000'
    ;movwf keylat
    ;bekle 50
    clrf keylat
    bsf keylat,a4
    bekle 50
    btfsc keyport,y1
    goto yildiz
    btfsc keyport,y2
    goto sifir
    btfsc keyport,y3
    goto diyez
    btfsc keyport,y4
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
