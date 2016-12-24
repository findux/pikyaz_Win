 list p=16f84
 #include p16f84.inc
Dest equ 0x0B ;Define constant
 org 0x0000 ;Reset vector
 goto Start
 org 0x0020 ;Begin program
Start
 movlw 0x0A
 movwf Dest
 bcf Dest, 3 ;This line uses 2 operands
 goto Start
 end