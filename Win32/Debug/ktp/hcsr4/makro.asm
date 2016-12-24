hcsr4olc macro deg,deg2
          CLRF    	TMR1H      ;ZERA TIMER 1 H /L
          CLRF    	TMR1L
          BCF     	PIR1,TMR1IF     ;APAGA FLAG TMR1
          BSF    	hcsr4port,trig
          bekle 	10
          BCF    	hcsr4port,trig
          BTFSS 	hcsr4port,eko
          GOTO    	$-1
          BSF 		T1CON,TMR1ON
          BTFSC 	hcsr4port,eko
          GOTO    	$-1
          call  	clrregb
	  call  	clrrega
          BCF  		T1CON,TMR1ON
          MOVF    	TMR1L,0
          MOVWF   	REGA0
          MOVF   	TMR1H,0
          MOVWF   	REGA1
          MOVLW  	.150
          MOVWF 	REGB0
          CALL 		bolme
          yukle 	REGA0,deg
          bekle 100
          CLRF    	TMR1H      ;ZERA TIMER 1 H /L
          CLRF    	TMR1L
          BCF     	PIR1,TMR1IF     ;APAGA FLAG TMR1
          BSF    	hcsr4port,7
          bekle 	10
          BCF    	hcsr4port,7
          BTFSS 	hcsr4port,6
          GOTO    	$-1
          BSF 		T1CON,TMR1ON
          BTFSC 	hcsr4port,6
          GOTO    	$-1
          call  	clrregb
	  call  	clrrega
          BCF  		T1CON,TMR1ON
          MOVF    	TMR1L,0
          MOVWF   	REGA0
          MOVF   	TMR1H,0
          MOVWF   	REGA1
          MOVLW  	.150
          MOVWF 	REGB0
          CALL 		bolme
          yukle 	REGA0,deg2
          endm