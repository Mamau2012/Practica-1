#include "p16F628a.inc"    ;incluir librerias relacionadas con el dispositivo
 __CONFIG _FOSC_INTOSCCLK & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _BOREN_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF    
;configuración del dispositivotodo en OFF y la frecuencia de oscilador
;es la del "reloj del oscilador interno" (INTOSCCLK)     
RES_VECT  CODE    0x0000            ; processor reset vector
    GOTO    START                   ; go to beginning of program
; TODO ADD INTERRUPTS HERE IF USED
MAIN_PROG CODE                      ; let linker place main program
;variables para el contador:
 i equ 0x30
 j equ 0x31
 k equ 0x32
 
 x equ 0x33
 y equ 0x34
 z equ 0x35
;inicio del programa: 
START
MOVLW 0x07 ;Apagar comparadores
MOVWF CMCON
 
 
BCF STATUS, RP1 ;Cambiar al banco 1
BSF STATUS, RP0 
MOVLW b'00000000' ;Establecer puerto B como salida (los 8 bits del puerto)
MOVWF TRISB 
BCF STATUS, RP0 ;Regresar al banco 0
BCF PORTB, 3
BCF PORTB, 1
BCF PORTB, 2
BCF PORTB, 4
BCF PORTB, 5
BCF PORTB, 6
BCF PORTB, 7
BSF PORTB, 0

 INICIO
BSF PORTB, 0 
BSF PORTB, 5 
call tiempo5 
BCF PORTB, 0 
BSF PORTB, 1 
call tiempo1 
BCF PORTB, 1 
BSF PORTB, 2  
BCF PORTB, 5 
BSF PORTB, 3 
call tiempo5
BCF PORTB, 3 
BSF PORTB, 4 
call tiempo1
BCF PORTB, 4 
BSF PORTB, 5
BCF PORTB, 2
nop
GOTO INICIO
 
 
			
tiempo5:
 
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




movlw d'254'
movwf i
	
iloop: movlw d'100'
	movwf j
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
	
	
jloop: movlw d'62'
       movwf k
       nop
       nop
       nop
       nop
       nop
       nop
       
       
kloop: decfsz k, f
	goto kloop
	decfsz j, f
	goto jloop
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
	nop
        nop
	nop
	nop
	nop
	nop
	nop
		
	
	decfsz i, f
	goto iloop
		
	return

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
 
 

 
movlw d'100'
movwf x
	
xloop: movlw d'36'
	movwf y
		
yloop: movlw d'90'
       movwf z
       nop
       nop
       nop
       
      
       
zloop: decfsz z, f
	goto zloop
	decfsz y, f
	goto yloop
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
        
	
  
	decfsz x, f
	goto xloop
		
	return	
    END