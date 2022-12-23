	AREA      RESET, DATA, READONLY
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
	    
		LDR SP,=0x00000018
		LDR R1,=0x01234567
		LDR R2,=0X76543210
		STR R0,[R13]
		
		LDMIA SP!,{R3,R4}
		
		END