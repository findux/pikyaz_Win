


; Code segment
 ORG 0
	goto	main


msg1
	movf	ind, w
	addwf	PCL, f
	dt 13, 10, 13, 10, "UART module is running", 13, 10, 0


sonrakiharf  macro  
	movf	msgNo, w
	addwf	PCL, f
	return
	goto	msg1
	goto	msg2
	goto	msg3
	goto	msg4
	goto	msg5
	goto	msg6
	goto	msg7
	goto	msg8
	goto	msg9

harfgonder  macro
	LCD_Char				; send out byte
	endm

yazigonder  macro sayi						; outputs string with number in WREG
	movlw	sayi
	movwf	msgNo				; set message number
	clrf	ind					; start the message

	movf	ind, w				; next char index
	sonrakiharf			; get next char
	addlw	0					; set bit Z in STATUS
	btfsc	STATUS, Z			; end of string?
	return						; YES - return
	LCD_Char				; send out byte
	incf	ind, f				; get to the next char
	goto	yazigonder+4
	endm 
	
spis_gonder	macro sayi,deg1						; send/receive byte via SPI
	movlw	sayi,0
	movwf	SSPBUF				; put data to send in WREG into SSPBUF
	btfss	SSPCON1, WCOL		; data sent?
	 goto	$+3					; YES - proceed
	bcf		SSPCON1, WCOL		; NO - reset WCOL and try again
	goto	$-4					


	btfss	SSPSTAT , BF	; buffer full?
	 goto	$-1					; NO - wait
	movf	SSPBUF, w			; return the received data in WREG
	movwf deg1
	endm
	

spid_gonder	macro deg,deg1						; send/receive byte via SPI
	movf	deg,0
	movwf	SSPBUF				; put data to send in WREG into SSPBUF
	btfss	SSPCON1, WCOL		; data sent?
	 goto	$+3					; YES - proceed
	bcf		SSPCON1, WCOL		; NO - reset WCOL and try again
	goto	$-4					


	btfss	SSPSTAT , BF	; buffer full?
	 goto	$-1					; NO - wait
	movf	SSPBUF, w			; return the received data in WREG
	movwf deg1
	endm

sendMMC	macro	   ; send command to MMC
local  wait_resp  
	spis_gonder 0xFF,temp
	spid_gonder cmd,temp
	spid_gonder arg+3,temp
	spid_gonder arg+2,temp
	spid_gonder arg+1,temp
	spid_gonder arg,temp
	spid_gonder crc,temp

wait_resp						; wait a response for at most 8 cycles
	spis_gonder 0xFF,temp
	movf temp,0
	addlw	48					; ASCII conversion
	harfgonder			; print response
	movf	temp, w				; restore response	
	subwf	resp, w				; expected responce?
	btfsc	STATUS, Z
	retlw 	0					; YES - return
	decfsz	cnt, f				; waiting period is over?
	goto	wait_resp			; NO - keep waiting
	retlw	1	
	endm

initMMC macro
	bsf	CS					; disable MMC
	movlw	10
	movwf	ind					; send 80 dummy clocks	

	spis_gonder 0xFF,temp
	decfsz	ind, f	
	goto	$-3
	bcf	CS					; enable MMC

	movlw	0x40				; ************** send CMD0
	movwf	cmd
	temizle arg
	movlw	0x95
	movwf	crc
	movlw	1					; expected response
	movwf	resp
	movlw	8					; maximum number of cycles
	movwf	cnt					; to wait for expected response
	sendMMC
	addlw	0					; set Z flag
	movlw	3					; message of success
	btfss	STATUS, Z
	movlw	5					; report an error
	yazigonder

	movlw	0x41				; **************** send CMD1
	movwf	cmd
	temizle arg
	movlw	0xFF
	movwf	crc
	clrf	resp				; expected response
	movlw	2
	movwf	cnt
	call	sendMMC
	addlw	0
	btfss	STATUS, Z
	 goto	$-11
	movlw	4					; message of success
	btfss	STATUS, Z
	 movlw	5
	yazigonder
	return

main
	bsf		CS					; disable MMC
	movlw 0x07
        movwf CMCON
        movlw 0x0F
        movwf ADCON1
	


	movlw	b'111000'			; setup I/O ports
	movwf	TRISA  
	movlw	b'10110000'
	movwf	TRISB 
	clrf	TRISC ^ 0x80

	movlw 	X					; load the baud rate generator
	movwf	SPBRG 
	movlw	b'00100000'			; enable TX for 8 data bits
	movwf	TXSTA 
	  bcf TRISA,d7
  bcf TRISA,d6
  bcf TRISA,d5
  bcf TRISA,d4
  bcf TRISA,e
  bcf TRISA,rs
  
	bcf		SSPSTAT , SMP	; input is ready at the middle of clock
	bcf		SSPSTAT , CKE	; 

	
	movlw	b'10010000'			; enable USART for 8 data bits
	movwf	RCSTA				; this automatically configures TX and RX pins

	movlw	1					; display message1
	yazigonder			; if UART is working
	lcdgiris
	bsf		SSPCON1, CKP			; idle state for clock is high
	bsf		SSPCON1, SSPM1		; FOSC/64 speed
	bsf		SSPCON1, SSPEN		; enable SPI master
	call	initMMC
	lcdsil
	lcdyaz 'A'
;*******SET BLOCK SIZE 512 Bytes
	movlw	0x50				; ************** send CMD
	movwf	cmd
	clrf	arg					; arg = 512
	movlw	2
	movwf	arg+1
	clrf	arg+2
	clrf	arg+3
	movlw	0xFF
	movwf	crc
	clrf	resp
	movlw	8
	movwf	cnt
	call	sendMMC
	addlw	0
	movlw	9					; message of success
	btfss	STATUS, Z
	 movlw	5					; error message
	yazigonder

;*******WRITING IN 512-BYTE MODE
	movlw	0x58				; ************** send CMD
	movwf	cmd
	clrf	arg					; arg = 512
	movlw	2
	movwf	arg+1
	clrf	arg+2
	clrf	arg+3
	movlw	0xFF
	movwf	crc
	clrf	resp
	movlw	8
	movwf	cnt
	call	sendMMC
	addlw	0
	movlw	8					; message of success
	btfss	STATUS, Z
	 movlw	5					; error message
	yazigonder

	movlw	0xFF				; write prefix
	spi_gonder
	movlw	0xFF
	spi_gonder
	movlw	0xFE
	spi_gonder

	movlw	255					; output first 255 chars
	movwf	cnt
	movlw	65
	spi_gonder				; get data byte
	decfsz	cnt, f
	 goto	$-3				
	movlw	255					; output next 255 chars
	movwf	cnt
	movlw	66
	spi_gonder				; get data byte
	decfsz	cnt, f
	 goto	$-3	
	movlw	67
	spi_gonder				; get data byte
	movlw	68
	spi_gonder				; get data byte

	movlw	0xFF				; write 2 bytes CRC
	spi_gonder
	movlw	0xFF
	spi_gonder

	movlw	0xFF				; wait for 0xFF
	spi_gonder
	sublw	0xFF
	btfss	STATUS, Z
	 goto	$-4

;*****READING in 512-BYTE MODE
	movlw	0x51				; ************** send CMD
	movwf	cmd
	clrf	arg					; arg = 512
	movlw	2
	movwf	arg+1
	clrf	arg+2
	clrf	arg+3
	movlw	0xFF
	movwf	crc
	clrf	resp
	movlw	8
	movwf	cnt
	call	sendMMC
	addlw	0
	movlw	6					; message of success
	btfss	STATUS, Z
	 movlw	5					; error message
	yazigonder

	movlw	0xFF				; wait for 0xFE
	spi_gonder
	sublw	0xFE
	btfss	STATUS, Z
	 goto	$-4

	movlw	255					; output first 255 chars
	movwf	cnt
	movlw	0xFF
	spi_gonder				; get data byte
	harfgonder			; send it to PC
	decfsz	cnt, f
	 goto	$-4				
	movlw	255					; output next 255 chars
	movwf	cnt
	movlw	0xFF
	spi_gonder				; get data byte
	harfgonder			; send it to PC
	decfsz	cnt, f
	 goto	$-4	
	movlw	0xFF
	spi_gonder				; get data byte
	harfgonder			; send it to PC
	movlw	0xFF
	spi_gonder				; get data byte
	harfgonder			; send it to PC

	movlw	0xFF				; read 2 bytes CRC
	spi_gonder
	movlw	0xFF
	spi_gonder

L10
	bsf		CS

	movlw	7
	yazigonder
	goto	$

 END
