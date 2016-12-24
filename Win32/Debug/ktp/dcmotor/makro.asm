
hiz macro
      incf   CCPR1L
      incf   CCPR1L
      incf   CCPR1L
      incf   CCPR1L
      incf   CCPR1L
      incf   CCPR1L
      endm
hiz2  macro
      decf   CCPR1L
      decf   CCPR1L
      decf   CCPR1L
      decf   CCPR1L
      decf   CCPR1L
      decf   CCPR1L
      endm
ileri macro
      BSF	dcport,sag	;so '1' is very slow forward
      BCF 	dcport,sol
      endm
geri macro
      BCF	dcport,sag
      BSF	dcport,sol
      endm
      