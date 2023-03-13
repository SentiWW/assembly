ljmp start
			
org 0100h
	start:	
						; SETUP
		mov r0, #0f1h	; [R0] - 241 decimal
		mov r1, #0cdh	; [R1] - 205 decimal
		
						; SUBTRACTION
						; subtracting bytes
		mov a, r0		; setting a to r0
		subb a, r1		; subtracting r1 from a
		mov r6, a		; 
		
		mov a, psw		; setting a to psw
		anl a, #01h		; performing AND on a and 00000001
		mov r7, a		; setting r7 to a

						; RESULT
						; [R7 - R6] - 24
		nop
		jmp $
	end start