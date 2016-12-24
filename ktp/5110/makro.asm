
;'///////  data gönder
yolla macro sayi
      bekle 20
      movlw sayi
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

