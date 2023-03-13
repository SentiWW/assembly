ljmp start
			
org 0100h
	start:	
						; SETUP
		mov r0, #0f1h	; [R0] - 241 decimal
		mov r1, #0cdh	; [R1] - 205 decimal
		
						; ADDITION
						; adding bytes
		mov a, r0		; setting a to r0
		add a, r1		; adding r1 to a
		
		mov r6, a		; setting r6 to the result of second addition
		
		mov a, #000h	; setting a to 0
		addc a, #000h	; adding carry to a
		mov r7, a		; setting r7 to carry

						; RESULT
						; [R7 - R6] - 446
		nop
		jmp $
	end start