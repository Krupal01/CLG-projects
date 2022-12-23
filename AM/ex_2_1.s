	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x20001000 ; stack pointer value when stack is empty
	DCD Reset_Handler ; reset vector
	ALIGN
; The program
; Linker requires Reset_Handler
	AREA MYCODE, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	MOVS R0,#10
	MOVS R1,#10
	ADDS R2,R1,R0
	MULS r0,r1,r0
STOP
	B STOP