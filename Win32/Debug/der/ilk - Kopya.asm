
       LIST  P = 18F2550,f = INHX32 ,w = 2, x = on, r = DEC, mm = ON, n = 0, c = 255
        include  p18f2550.inc 
        CONFIG    FOSC = HSPLL_HS
        CONFIG    CPUDIV = OSC1_PLL2
        CONFIG    PLLDIV = 3
        CONFIG    MCLRE = OFF
        CONFIG    STVREN = OFF
        CONFIG    IESO=OFF
        CONFIG    LVP = OFF
        CONFIG    BOR = OFF 
        CONFIG    PWRT = ON
        CONFIG    WDT = OFF
        CONFIG    DEBUG = OFF
        CONFIG    CP1 = OFF
        CONFIG    CP2 = OFF
        CONFIG    CP3 = OFF
        CONFIG    CPB = OFF
        CONFIG    WRT0 = OFF
        CONFIG    WRT1 = OFF
        CONFIG    WRT2 = OFF
        CONFIG    WRT3 = OFF
        CONFIG    WRTB = OFF
        CONFIG    WRTC = OFF
        CONFIG    EBTR0 = OFF
        CONFIG    EBTR1 = OFF
        CONFIG    EBTR2 = OFF
        CONFIG    EBTR3 = OFF
        CONFIG    EBTRB = OFF
       
    include C:\_Pikyaz\Win32\Debug\der\ortak\makrolar.asm
kesme1  macro 
   
   endm
kesme2  macro 
   
   endm
   errorlevel -302 
   radix    dec 
cblock 0x20 
     REGA0,REGA1,REGA2,REGA3
     REGB0,REGB1,REGB2,REGB3
     REGC0,REGC1,REGC2,REGC3
     DSIGN
     DIGIT1
     DIGIT2
     DIGIT3
     DIGIT4
     DIGIT5
     DIGIT6
     DIGIT7
     DIGIT8
     DIGIT9
     DIGIT10
     MTEMP
     MCOUNT
     DCOUNT
     count1
     counta
     countb
     key
     bey
     OUT
     dgdeg
     __i
     __j
     __k
     wte
     ab
     ab_a
     ab_b
     ab_c
endc 
              org 0x000 
              goto _BAS

_BAS
     clrf        TRISA
     clrf        TRISB
     clrf        TRISC
     bcf UCON, USBEN
     bsf UCFG, UTRDIS
     movlw       0x07
     movwf       CMCON
     movlw       0x0F
     movwf       ADCON1
     BCF         EECON1, EEPGD

   clrf  PORTA
   clrf  PORTB
   clrf  PORTC
   clrf  LATA
   clrf  LATB
   clrf  LATC
   clrf  DSIGN
   clrf  DIGIT1
   clrf  DIGIT2
   clrf  DIGIT3
   clrf  DIGIT4
   clrf  DIGIT5
   clrf  DIGIT6
   clrf  DIGIT7
   clrf  DIGIT8
   clrf  DIGIT9
   clrf  DIGIT10
   clrf  MTEMP
   clrf  MCOUNT
   clrf  DCOUNT
   clrf  count1
   clrf  counta
   clrf  countb
   clrf  key
   clrf  bey
   clrf  OUT
   clrf  dgdeg
   clrf  __i
   clrf  __j
   clrf  __k
   clrf  wte
   clrf  ab
   clrf  ab_a
   clrf  ab_b
   clrf  ab_c
    bcf TRISB,0
   temizle REGB0
   temizle REGA0
   bcf   TRISB,0
 ; ///////////////////////
_BAS2
   bsf   LATB,0
   bekle 10000
   bcf   LATB,0
   bekle 10000
   goto _BAS2


;********************************** Matematik İşlemler**************************************
;{
;*** 32 Bit İşaretli çıkarma ***
;REGA - REGB -> REGA

cikarma
    call    negateb     ; REGB - olacak.
    skpnc                ; STATUS C biti 0  mı değilse toplama REGA+(-REGB)
    return          ;uçtu dön.

;*** 32 BIT İşaretli Toplama ***
;REGA + REGB -> REGA

toplama
    movf    REGA3,w     ;İşaretleri kontrol et.
    xorwf   REGB3,w
    movwf   MTEMP

    call    addba       ;REGA= REGB + REGA

    clrc            ;
    movf    REGB3,w     ;If signs are same
    xorwf   REGA3,w     ;so must result sign
    btfss   MTEMP,7     ;else overflow
    addlw   0x80
    return

carpma
  clrf  MTEMP    ;İşareti temizle.
  call  absa    ;REGA yı pozitif yap
  skpc
  call  absb    ;REGB yı pozitif yap
  skpnc
  return      ;uçtu...dön

  call  movac    ; REGA = REGC
  call  clrrega    ;REGA = 0

  movlw  D'31'    ;işlenecek bit sayısı
  movwf  MCOUNT

muloop
  call  slac    ;REGA  REGC  kaydır
  rlcf  REGC3,w    ;REGC3 kayınca 
  skpnc      ;STATUS C biti 0  mı(1 se çarpan 1 dir)
  call  addba    ;0 değil  REGA + REGB

  skpc      ;toplanınca STATUS C biti 1 oluyor mu
  rlcf  REGA3,w  ; evet REGA3 ü bir kaydır 
  skpnc      ; STATUS C biti 0  mı
  return   ; evet iş bitti  dön.

  decfsz  MCOUNT,f  ;hayır diğer bit.
  goto  muloop

  btfsc  MTEMP,0    ;Check result sign
  call  negatea    ;Negative
  return

bolme
  clrf  MTEMP    ;Reset sign flag
  movf  REGB0,w    ;Trap division by zero
  iorwf  REGB1,w
  iorwf  REGB2,w
  iorwf  REGB3,w
  sublw  0   ; REGB - 0 
  skpc         ; STATUS C biti 1  mı
  call  absa    ;evet REGA yı positif yap
  skpc         ; STATUS C biti 1  mı
  call  absb    ;evet REGB yı positif yap
  skpnc         ; STATUS C biti 0  sa
  return      ; uçtu ... dön

  clrf  REGC0    ;REGC yi temizle
  clrf  REGC1
  clrf  REGC2
  clrf  REGC3
  call  slac    ;REGA  REGC  kaydır

  movlw  D'31'    ;Loop counter
  movwf  MCOUNT

dvloop
  call  slac    ;REGA  REGC  kaydır

  movf  REGB3,w    ;Test if remainder (REGC) >= divisor (REGB)
  subwf  REGC3,w
  skpz
  goto  dtstgt
  movf  REGB2,w
  subwf  REGC2,w
  skpz
  goto  dtstgt
  movf  REGB1,w
  subwf  REGC1,w
  skpz
  goto  dtstgt
  movf  REGB0,w
  subwf  REGC0,w
dtstgt
  skpc      ;Carry set if remainder >= divisor
  goto  dremlt
  movf  REGB0,w    ;Subtract divisor (REGB) from remainder (REGC)
  subwf  REGC0,f
  movf  REGB1,w
  skpc
  incfsz  REGB1,w
  subwf  REGC1,f
  movf  REGB2,w
  skpc
  incfsz  REGB2,w
  subwf  REGC2,f
  movf  REGB3,w
  skpc
  incfsz  REGB3,w
  subwf  REGC3,f
  clrc
  bsf  REGA0,0    ;Set quotient bit

dremlt  decfsz  MCOUNT,f  ;Next
  goto  dvloop
  btfsc  MTEMP,0    ;Check result sign
  call  negatea    ;Negative
  return

round
  clrf  MTEMP    ;Reset sign flag
  call  absa    ;Make positive
  clrc
  call  slc    ;Multiply remainder by 2
  movf  REGB3,w    ;Test if remainder (REGC) >= divisor (REGB)
  subwf  REGC3,w
  skpz
  goto  rtstgt
  movf  REGB2,w
  subwf  REGC2,w
  skpz
  goto  dtstgt
  movf  REGB1,w
  subwf  REGC1,w
  skpz
  goto  rtstgt
  movf  REGB0,w
  subwf  REGC0,w
rtstgt
  skpc      ;Carry set if remainder >= divisor
  goto  rremlt
  incfsz  REGA0,f    ;Add 1 to quotient
  goto  rremlt
  incfsz  REGA1,f
  goto  rremlt
  incfsz  REGA2,f
  goto  rremlt
  incf  REGA3,f
  skpnz
  return      ;Overflow,return carry set
rremlt
  btfsc  MTEMP,0    ;Restore sign
  call  negatea
  return

kok
  rlcf  REGA3,w    ;Trap negative values
  skpnc
  return
  call  movac    ;Move REGA to REGC
  temizle REGA0    ;Clear remainder (REGB) and root (REGA)
  temizle REGB0
  movlw  D'16'    ;Loop counter
  movwf  MCOUNT

sqloop
  rlcf  REGC0,f    ;Shift two msb's
  rlcf  REGC1,f    ;into remainder
  rlcf  REGC2,f
  rlcf  REGC3,f
  rlcf  REGB0,f
  rlcf  REGB1,f
  rlcf  REGB2,f
  rlcf  REGC0,f
  rlcf  REGC1,f
  rlcf  REGC2,f
  rlcf  REGC3,f
  rlcf  REGB0,f
  rlcf  REGB1,f
  rlcf  REGB2,f

  setc      ;Add 1 to root
  rlcf  REGA0,f    ;Align root
  rlcf  REGA1,f
  rlcf  REGA2,f

  movf  REGA2,w    ;Test if remdr (REGB) >= root (REGA)
  subwf  REGB2,w
  skpz
  goto  ststgt
  movf  REGA1,w
  subwf  REGB1,w
  skpz
  goto  ststgt
  movf  REGA0,w
  subwf  REGB0,w
ststgt  skpc      ;Carry set if remdr >= root
  goto  sremlt

  movf  REGA0,w    ;Subtract root (REGA) from remdr (REGB)
  subwf  REGB0,f
  movf  REGA1,w
  skpc
  incfsz  REGA1,w
  subwf  REGB1,f
  movf  REGA2,w
  skpc
  incfsz  REGA2,w
  subwf  REGB2,f
  bsf  REGA0,1    ;Set current root bit

sremlt  bcf  REGA0,0    ;Clear test bit
  decfsz  MCOUNT,f  ;Next
  goto  sqloop

  clrc
  rrcf  REGA2,f    ;Adjust root alignment
  rrcf  REGA1,f
  rrcf  REGA0,f
  return

addba   ;  REGA + REGB
  movf  REGB0,w    ;Add lo byte
  addwf  REGA0,f
  movf  REGB1,w    ;Add mid-lo byte
  skpnc      ;No carry_in, so just add
  incfsz  REGB1,w    ;Add carry_in to REGB
  addwf  REGA1,f    ;Add and propagate carry_out
  movf  REGB2,w    ;Add mid-hi byte
  skpnc
  incfsz  REGB2,w
  addwf  REGA2,f
  movf  REGB3,w    ;Add hi byte
  skpnc
  incfsz  REGB3,w
  addwf  REGA3,f
  return

movac
  movf  REGA0,w
  movwf  REGC0
  movf  REGA1,w
  movwf  REGC1
  movf  REGA2,w
  movwf  REGC2
  movf  REGA3,w
  movwf  REGC3
  return
movbc
  movf  REGB0,w
  movwf  REGC0
  movf  REGB1,w
  movwf  REGC1
  movf  REGB2,w
  movwf  REGC2
  movf  REGB3,w
  movwf  REGC3
  return
movab
  movf  REGA0,w
  movwf  REGB0
  movf  REGA1,w
  movwf  REGB1
  movf  REGA2,w
  movwf  REGB2
  movf  REGA3,w
  movwf  REGB3
  return

movba
  movf REGB0  ; B=>A
  movwf REGA0
  movf REGB1
  movwf REGA1
  movf REGB2
  movwf REGA2
  movf REGB3
  movwf REGA3
  
clrregb
  clrf  REGB0
  clrf  REGB1
  clrf  REGB2
  clrf  REGB3
  return

clrrega
  clrf  REGA0
  clrf  REGA1
  clrf  REGA2
  clrf  REGA3
  return

absa
  rlcf  REGA3,w
  skpc
  return      ;Pozitive
negatea
  movf  REGA3,w    ;Save sign in w
  andlw  0x80
  comf  REGA0,f    ;2's complement
  comf  REGA1,f
  comf  REGA2,f
  comf  REGA3,f
  incfsz  REGA0,f
  goto  nega1
  incfsz  REGA1,f
  goto  nega1
  incfsz  REGA2,f
  goto  nega1
  incf  REGA3,f
nega1
  incf  MTEMP,f    ;flip sign flag
  addwf  REGA3,w    ;Return carry set if -2147483648
  return

__degis
  CALL movac  ; A=>C
  call movba   ; B=>A
  movf REGC0  ; C=>B
  movwf REGB0
  movf REGC1
  movwf REGB1
  movf REGC2
  movwf REGB2
  movf REGC3
  movwf REGB3
  return
  
absb
  rlcf  REGB3,w
  skpc
  return      ;Positive
negateb
  movf  REGB3,w    ;Save sign in w
  andlw  0x80
  comf  REGB0,f    ;2's complement
  comf  REGB1,f
  comf  REGB2,f
  comf  REGB3,f
  incfsz  REGB0,f
  goto  negb1
  incfsz  REGB1,f
  goto  negb1
  incfsz  REGB2,f
  goto  negb1
  incf  REGB3,f
negb1
  incf  MTEMP,f    ;flip sign flag
  addwf  REGB3,w    ;Return carry set if -2147483648
  return

slac
  rlcf  REGA0,f
  rlcf  REGA1,f
  rlcf  REGA2,f
  rlcf  REGA3,f
slc
  rlcf  REGC0,f
  rlcf  REGC1,f
  rlcf  REGC2,f
  rlcf  REGC3,f
  return

clrdig
    clrf  DSIGN
    clrf  DIGIT1
    clrf  DIGIT2
    clrf  DIGIT3
    clrf  DIGIT4
    clrf  DIGIT5
    clrf  DIGIT6
    clrf  DIGIT7
    clrf  DIGIT8
    clrf  DIGIT9
    clrf  DIGIT10
    clrf REGB3
    clrf REGB2
    clrf REGB1
    clrf REGB0
    clrf key
    clrf  bey
    clrf  OUT
    clrf  dgdeg
    return

Key_Table    ADDWF   PCL       , f
              RETLW   'A'
              RETLW   'B'
              RETLW   'C'
              RETLW   'D'
              RETLW   'E'
              RETLW   'F'
              RETLW   'G'
              RETLW   'H'
              RETLW   'J'
              RETLW   'K'
              RETLW   'L'
              RETLW   'M'
              RETLW   'N'
              RETLW   'O'
              RETLW   'P'
              RETLW   'R'
              

darp
    bsf LATB,1		; clk 1
	  bcf LATB,1		; clk 0			; bit13
    return
olc
	call clrregb   ; regb temizle
	call clrrega	; rega temizle
	clrf ab	
	clrf ab_a

	bcf LATC,2		; cs yi indir. veri alımı başlıyor. 
	call darp
	call darp

	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit14
	movlw b'00000010'   ; ab+spdeg2 = 571 
	movwf	ab_a  
	
bit14
	call clrregb   ; regb temizle
	call clrrega	; rega temizle
	call darp
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit13
	movf ab,0	; ab regb ye yükle
	movwf	REGB0
	movf ab_a,0
	movwf	REGB1
	movlw 0x01	; rega = 256
	movwf	REGA1
	call  toplama		; topla
	movf REGA0,0 
	movwf ab  ; sonuç ab de. 
	movf REGA1,0
	movwf ab_a
bit13
	call clrregb   ; regb temizle
	call clrrega	; rega temizle
	call darp
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit12
	movf ab_a,0
	movwf	REGB1
	movf ab,0
	movwf	REGB0
	movlw .128
	movwf	REGA0
	call  toplama
	movf REGA0,0 
	movwf ab
	movf REGA1,0
	movwf ab_a
	call clrregb
	call clrrega
bit12
	call clrregb   ; regb temizle
	call clrrega	; rega temizle
	call darp
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit11
	movf ab_a,0
	movwf	REGB1
	movf ab,0
	movwf	REGB0
	movlw .64
	movwf	REGA0
	call  toplama
	movf REGA0 ,0
	movwf ab
	movf REGA1,0
	movwf ab_a
	call clrregb
	call clrrega
bit11
	call clrregb   ; regb temizle
	call clrrega	; rega temizle
	call darp; bit10
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit10
	movf ab_a,0
	movwf	REGB1
	movf ab,0
	movwf	REGB0
	movlw .32
	movwf	REGA0
	call  toplama
	movf REGA0 ,0
	movwf ab
	movf REGA1,0
	movwf ab_a
	call clrregb
	call clrrega
bit10
	call clrregb   ; regb temizle
	call clrrega	; rega temizle
	call darp;	bit9
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit9
	movf ab_a,0
	movwf	REGB1
	movf ab,0
	movwf	REGB0
	movlw .16
	movwf	REGA0
	call  toplama
	movf REGA0 ,0
	movwf ab
	movf REGA1,0
	movwf ab_a
	call clrregb
	call clrrega
bit9
	call darp;	bit 8
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit8
	artir ab
	artir ab
	artir ab
	artir ab
	artir ab
	artir ab
	artir ab
	artir ab
bit8
	call darp;			bit7
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit7
	artir ab
	artir ab
	artir ab
	artir ab

bit7
	call darp;		bit 6
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit6
	artir ab
	artir ab
bit6

	call darp;				bit5
	btfss PORTB,0 ;  PORTB,0 1 mi 1 se atla
	goto bit5
	artir ab
bit5
	call darp;bit	4
	call darp;bit	3
	call darp;bit	2
	call darp;bit	1
	call darp;bit	0
	call darp;	boş
	bsf  LATC,2
	return
	

serioku
  movf  RCREG,W
  bcf RCSTA,4
  bsf RCSTA,4
  return
seriyazi
   movwf          TXREG
  bekle 500
  return
epromyaz
      BCF       EECON1, EEPGD             ;SELECT EEPROM READ/WRITE
      BCF       EECON1, CFGS
      bsf         EECON1, WREN          ;Yazmayı etkinleştir.
      movlw     0x55                   ;Bu değerler EECON    ;kaydedicisine sıralı   ;yüklenmeli.
      movwf   EECON2
      movlw   0xAA
      movwf   EECON2
      bsf         EECON1, WR              ;Yaz komutu veriliyor.
      nop                             ;İşlemin tamamlanması için 2   ;komut çevrimi bekle.
      nop
      nop
      nop
      bcf         EECON1, WREN          ;Yazmayı pasif hale getir.       
      bekle 50
      return
epromoku  
      BCF       EECON1, EEPGD               ; 
      BCF       EECON1, CFGS                ; Access program FLASH or Data EEPROM memory
      bsf         EECON1, RD                  ;Okumayı etkinleştir.
      nop                                 ;İşlemin tamamlanması için 2   ;komut çevrimi bekle.
      nop
      nop
      nop
     return

     
     

 ; ///////////////////////
END
