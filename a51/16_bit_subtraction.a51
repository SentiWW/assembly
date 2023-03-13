ljmp start
			
org 0100h
	start:	
						; SETUP
		mov r0, #0f1h	; [R1 - R0] - 4081 decimal
		mov r1, #0fh	;		

		mov r2, #0cdh	; [R3 - R2] - 43981 decimal
		mov r3, #0abh	;
		
						; SUBTRACTION
						; subtracting first 4 bytes
		mov a, r0		; setting a to r0
		subb a, r2		; subtracting r2 from a
		
						; subtracting another 4 bytes and carry
		mov r5, a		; setting r5 to the result of first subtraction
		mov a, r1		; setting a to r1
		subb a, r3		; subtracting r3 and carry from a
		mov r6, a		; setting r6 to the result of second subtraction
		
		mov a, psw		; setting a to psw
		anl a, #01h		; performing AND on a and 00000001
		mov r7, a		; setting r7 to a

						; RESULT
						; [R7 - R5] - -39900
		nop
		jmp $
	end start