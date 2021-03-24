	CLR P0.7
loop:
	MOV P1, A
	ADD a, #3
CJNE a, #0FFh, loop 

loop1: MOV p1, A
SUBB a, #3
CJNE a, #00h, loop1
JMP loop
