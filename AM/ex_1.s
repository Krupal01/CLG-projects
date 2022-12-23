	AREA    RESET, DATA, READONLY
	EXPORT  __Vectors
 
__Vectors 
      DCD  0x20001000     ; stack pointer value when stack is empty
      DCD  Reset_Handler  ; reset vector
      ALIGN
 
; The program
; Linker requires Reset_Handler
 
      AREA    MYCODE, CODE, READONLY
	  ENTRY
   	  EXPORT Reset_Handler
 
Reset_Handler
		
		LDR R1,=0x7FFFFFFF
		MOV R2,#0x55
		MOV R3,#0x02
		MOV R4,R3,LSL #2
		ADD R5,R2,R3
		ADD R6,R2,R3,LSL #4
LOOP	B LOOP
		
		