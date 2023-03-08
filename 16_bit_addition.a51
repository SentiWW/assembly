ljmp start
			
org 0100h
	start:	
						; SETUP
		mov r0, #0f1h	; [R1 - R0] - 4081 decimal
		mov r1, #0fh	;				
						
		mov r2, #0cdh	; [R3 - R2] - 43981 decimal
		mov r3, #0abh	;
		
						; ADDITION
						; adding first 4 bytes
		mov a, r0		; setting a to r0
		add a, r2		; adding r2 to a
		
						; adding another 4 bytes and carry
		mov r5, a		; setting r5 to the result of first addition
		mov a, r1		; setting a to r1
		addc a, r3		; adding r3 and carry to a
		mov r6, a		; setting r6 to the result of second addition
		
		mov a, #000h	; setting a to 0
		addc a, #000h	; adding carry to a
		mov r7, a		; setting r7 to carry

						; RESULT
						; [R7 - R5] - 48062
		nop
		jmp $
	end start