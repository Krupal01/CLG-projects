	AREA   RESET, DATA, READONLY
	EXPORT  __Vectors

__Vectors
	DCD 0x20001000
	DCD Reset_Handler ; reset vector
	ALIGN
; The program
; Linker requires Reset_Handler
	AREA MYCODE, CODE, READONLY
		ENTRY
		EXPORT Reset_Handler
Reset_Handler
	    ADR r0,srcstr ; pointer to string
	    LDR r1, =0x20000000 ; pointer to store string
strcopy
			LDRB r2, [r0],#1 ; load byte and update address
			STRB r2, [r1],#1 ; store byte and update address;
			CMP r2, #0 ; check for zero terminator
			BNE strcopy ; keep going if not
			SWI 0x11 ; terminate
srcstr  	DCB "EC Department, GEC Rajkot",0
		END