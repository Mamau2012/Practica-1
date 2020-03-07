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
 o equ 0x33
 p equ 0x34
 q equ 0x35
 
 
START
MOVLW 0x07
MOVWF CMCON
 
 
BCF STATUS, RP1 ;Cambiar al banco 1
BSF STATUS, RP0 
MOVLW b'0000' ;Establecer puerto B como salida (los 4 BITS del puerto)
MOVWF TRISB 
BCF STATUS, RP0 ;Regresar al banco 0
BSF PORTB, 0
BSF PORTB, 1
BSF PORTB, 2
BSF PORTB, 3
 
INICIO
 
call tiempo25 ;0.25
BCF PORTB, 0
call tiempo
BSF PORTB, 0
call tiempo25  ;0.50
BCF PORTB, 0
 call tiempo
BSF PORTB, 0
 call tiempo
BCF PORTB, 1
 call tiempo
BSF PORTB, 1
call tiempo25  ;.75
BCF PORTB, 0
 call tiempo
BSF PORTB, 0
call tiempo25  ;1
BCF PORTB, 0
 call tiempo
BSF PORTB, 0
 call tiempo
BCF PORTB, 1
 call tiempo
BSF PORTB, 1
 call tiempo
BCF PORTB, 2
 call tiempo
BSF PORTB, 2
call tiempo25 ;1.25
BCF PORTB, 0
 call tiempo
BSF PORTB, 0
call tiempo25  ;1.5
BCF PORTB, 0
 call tiempo
BSF PORTB, 0
 call tiempo
BCF PORTB, 1
 call tiempo
BSF PORTB, 1
call tiempo25  ;1.75
BCF PORTB, 0
 call tiempo
BSF PORTB, 0
call tiempo25  ;2
BCF PORTB, 0
 call tiempo
BSF PORTB, 0
 call tiempo
BCF PORTB, 1
 call tiempo
BSF PORTB, 1
 call tiempo
BCF PORTB, 2
 call tiempo
BSF PORTB, 2
 call tiempo
BCF PORTB, 3
 call tiempo
BSF PORTB, 3
 
GOTO INICIO
 
tiempo25:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
   nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
 
 movlw d'107'
 movwf i

 iloop: movlw d'104'
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
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop


 jloop: movlw d'4'
    movwf k
nop
nop
nop
nop
nop
nop


 
 kloop: decfsz k, f
    goto kloop
    decfsz j,f
    goto jloop
    decfsz i, f
    goto iloop
    
 
    
    return 
    
    
    
 tiempo:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop


 movlw d'33'
 movwf o

 oloop: movlw d'104'
    movwf p
    nop
nop
nop

nop
nop
nop
nop
nop

nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop


 ploop: movlw d'4'
    movwf q
    nop

nop
nop
nop
nop
nop


 
 qloop: decfsz q, f
    goto qloop
    decfsz p,f
    goto ploop
    decfsz o, f
    goto oloop
    
 
    
    return 
END