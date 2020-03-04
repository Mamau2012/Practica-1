#include "p16F628a.inc"    ;incluir librerias relacionadas con el dispositivo
 __CONFIG _FOSC_INTOSCCLK & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _BOREN_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF    
;configuración del dispositivotodo en OFF y la frecuencia de oscilador
;es la del "reloj del oscilador interno" (INTOSCCLK)     
RES_VECT  CODE    0x0000            ; processor reset vector
    GOTO    START               ; go to beginning of program
; TODO ADD INTERRUPTS HERE IF USED
MAIN_PROG CODE                      ; let linker place main program
;variables para el contador:
 i equ 0x30
 j equ 0x31
 k equ 0x32
 
 x equ 0x33
 y equ 0x34
 z equ 0x35
 
 l equ 0x36
 m equ 0x37
 n equ 0x38
 
 o equ 0x39
 p equ 0x40
 q equ 0x41
;inicio del programa: 
START
MOVLW 0x03
MOVWF CMCON
 
 
BCF STATUS, RP1 ;Cambiar al banco 1
BSF STATUS, RP0 
MOVLW b'0000' ;Establecer puerto B como salida (los 4 BITS del puerto)
MOVWF TRISB 
BCF STATUS, RP0 ;Regresar al banco 0
BSF PORTB, 0
 
INICIO
 
BSF PORTB, 0
BCF PORTB, 3
call tiempo1
BSF PORTB, 1
BCF PORTB, 0
 call tiempo2
BSF PORTB, 2
BCF PORTB, 1
call tiempo3
BSF PORTB, 3
BCF PORTB, 2
  
 GOTO INICIO
 
    
    tiempo1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
     nop
    nop
  
    
    movlw d'51'
        movwf i
    
 iloop: movlw d'43'
        movwf j
	nop
   
jloop: movlw d'51'
       movwf k
       nop
       nop
    
 kloop:decfsz k,f
       goto kloop
       decfsz j,f
       goto jloop
       decfsz i,f
       goto iloop
    
    return 
    
   tiempo2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
     nop
    nop
    
    movlw d'54'
        movwf x
    
xloop: movlw d'49'
        movwf y
	nop
   
yloop: movlw d'60'
       movwf z
       nop
       nop
    
zloop: decfsz z,f
       goto zloop
       decfsz y,f
       goto yloop
       decfsz x,f
       goto xloop
    
    return 
    

tiempo3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
     nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
     nop
    nop
    
    movlw d'53'
        movwf l
    
 lloop: movlw d'49'
        movwf m
	nop
   
mloop: movlw d'60'
       movwf n
       nop
       nop
    
 nloop:decfsz n,f
       goto nloop
       decfsz m,f
       goto mloop
       decfsz l,f
       goto lloop
    
    return   
    
    tiempo4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
     nop
    nop
    
    movlw d'53'
        movwf o
    
 oloop: movlw d'49'
        movwf p
	nop
   
ploop: movlw d'56'
       movwf q
       nop
       nop
    
 qloop:decfsz q,f
       goto qloop
       decfsz p,f
       goto ploop
       decfsz o,f
       goto oloop
    
    return 
END


