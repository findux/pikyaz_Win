serioku  macro deg
  movf  RCREG,W
  movwf       deg
  bcf RCSTA,4
  bsf RCSTA,4
  endm
  
seribas macro deg
  movf deg,0
   movwf          TXREG
  bekle 1000
  endm
seriyazi macro sbt
  movlw sbt
   movwf          TXREG
  bekle 1000
  endm
  
_duz macro deg
  movlw .48
  subwf  deg,1
  endm
  
