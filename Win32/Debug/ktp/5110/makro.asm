     variable  _sdeg
;'///////  data gönder
yolla macro sayi
      bekle 20
      movlw sayi
      movwf  SSPBUF
      bekle 20
      endm
yolladeg macro deg
      bekle 20
      movf deg,0
      movwf  SSPBUF
      bekle 20
      endm
n5110konum  macro xsayi,ysayi
	bsf  _5110port,dc
        _cmdyaz xsayi
        _cmdyaz ysayi 
	endm

_cmdyaz macro sayi
      bcf  _5110port,dc
      bekle 20
      yolla sayi
      endm
_datayaz macro sayi
      bsf  _5110port,dc
      bekle 20
      yolla sayi
      endm
n5110giris macro
      	bcf    _5110port,rst
      	bekle 500
      	bsf      _5110port,rst
      	bcf _5110port,dc
	bekle 100
      	_cmdyaz b'00100001'  ; sel extended instruction set (h=1)
	_cmdyaz b'10111001'  ; set Vop (Contrast)
	_cmdyaz b'00100000'  ; sel normal instruction set (h=0)
	_cmdyaz b'00001100'  ; display normal mode
	;_cmdyaz 0x00
	bekle 500
      endm

n5110bas macro  deg
    temizle REGA0
    yukle deg,REGA0
    n5110BIN2DEC
    rakamyazi
    endm

n5110BIN2DEC	macro  ;REGA=> onluk paket.... hex den paket bcd 
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
	addwf    PCL
	call hgf
	;swapf     digit, w
    andlw     0x0f
	addwf    PCL
	call hgf
	; _sayikont
kon
	endm

rakamyazi macro
      	clrf key
	kazi DIGIT5
	kazi DIGIT4
	kazi DIGIT3
	kazi DIGIT2
	kazi DIGIT1
      endm

_sayikont macro
local _8kont,_7kont,_6kont,_5kont,_4kont,_3kont,_2kont,_1kont,_0kont,cik
      movwf   _sdeg
      movlw .9
      subwf   _sdeg,0
      skpz
      goto _8kont
      _99 
      goto cik
_8kont
      movlw .8
      subwf   _sdeg,0
      skpz
      goto _7kont
      _88 
      goto cik
_7kont
      movlw .7
      subwf   _sdeg,0
      skpz
      goto _6kont
      _77
      goto cik
_6kont
      movlw .6
      subwf   _sdeg,0
      skpz
      goto _5kont
      _66
      goto cik
_5kont
      movlw .5
      subwf   _sdeg,0
      skpz
      goto _4kont
      _55
      goto cik
_4kont
      movlw .4
      subwf   _sdeg,0
      skpz
      goto _3kont
      _44
      goto cik
_3kont
      movlw .3
      subwf   _sdeg,0
      skpz
      goto _2kont
      _33
      goto cik
    
_2kont
      movlw .2
      subwf   _sdeg,0
      skpz
      goto _1kont
      _22
      goto cik
    
_1kont
      movlw .1
      subwf   _sdeg,0
      skpz
      goto _0kont
      _11
      goto cik
    
_0kont
      incf _sdeg,1
      movlw .1
      subwf   _sdeg,01
      goto cik
      _00
cik
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
    
