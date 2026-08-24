

MVI C, 05H
LXI H, 3000H ; HL = source address
LXI D, 300AH ; DE = destination addres
LOOP: MOV A, M ; Copy source byte to A
STAX D
INX H

INX D

DCR C ; Decrease byte count
JNZ LOOP ; Repeat until C= 0
HLT

; C =number of bytes =5

; Store A at destination
; Next source address

; Next destination address