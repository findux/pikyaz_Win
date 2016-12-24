    ; makrolar assembly dili ile yazılır. başka makrolar kullanılabilir.
    ; makro adlandırmada kullanıcının kullanacağı isimler kolay ve anlaşılabilir olmalı. 
    ; sadece makroda kullanılacak değişkenler makronun başında tanımlanmalıdır.


    variable  __sayi1=0   ; değişkenler başta tanımlanır. 
    variable  __sayi2=0   ; değişkenler başta tanımlanır. 

giris macro degisken   ; kullanıcının kullanması gereken makro adları kolay kullanılabilir olmalı. 
		        ;  kullanıcının kullanacağı makro,  adı,kullanım şekli ve açıklaması ile komut dosyasına eklenmelidir..
    btfss   pin21      ;  
    
    __temizlik         ; başka makrolar makro içinde kullanılabilir. 
    
    mrts __sayi2         ; referanslı makro çağırma. 
    
    endm              ; bir makro mutlaka endm ile bitirilir. 

__temizlik macro      ; kullanıcının kullanmadığı makrolarda isimlendirmeye dikkat edilmeli. 
    clrf    __sayi1    ; assembly dili ile yazılır. 
    movlw 15
    movwf  __sayi1
    endm
    
__mrts macro sonuc
    ....
    ....
    ....
    endm