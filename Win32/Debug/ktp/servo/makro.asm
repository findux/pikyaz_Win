    variable  _forsay=0
ileri macro aci
   for   _forsay,0,aci
            bsf       	srvport,srv1
            bekle	15
            bcf       	srvport,srv1
            bekle 	15
      next   _forsay
      endm

geri macro aci
      for   _forsay,0,aci
            bsf       	srvport,srv1
            bekle	7
            bcf       	srvport,srv1
            bekle	7
      next   _forsay
      endm