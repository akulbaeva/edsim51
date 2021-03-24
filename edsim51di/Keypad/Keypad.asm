		;Scan row3
Begin:  Clr P0.3
		Call IDCode0
		Jb F0, Done

		;Scan row2
		Clr P0.2
		Call IDCode1
		Jb F0, Done
		
		;Scan row1
		Clr P0.1
		Call IDCode2
		Jb F0, Done

		;Scan row0
		Clr P0.0
		Call IDCode3
		Jb F0, Done

		Jmp Begin

Done: 	Jmp $

IDCode0: Jnb P0.4, KeyCode03
		 Jnb P0.5, KeyCode13
		 Jnb P0.6, KeyCode23
		 Ret 

KeyCode03: SetB F0
		   Mov R7, #0B0h
		   Mov P1, R7
		   Ret

KeyCode13: SetB F0
		   Mov R7, #0A4h
		   Mov P1, R7
		   Ret
KeyCode23: SetB F0
		   Mov R7, #0F9h
		   Mov P1, R7
		   Ret


IDCode1: Jnb P0.4, KeyCode02
		 Jnb P0.5, KeyCode12
		 Jnb P0.6, KeyCode22
		 Ret

KeyCode02: SetB F0
		   Mov R7, #82h
		   Mov P1, R7
		   Ret

KeyCode12: SetB F0
		   Mov R7, #92h
		   Mov P1, R7
		   Ret

KeyCode22: SetB F0
		   Mov R7, #99h
		   Mov P1, R7
		   Ret

IDCode2: Jnb P0.4, KeyCode01
		 Jnb P0.5, KeyCode11
		 Jnb P0.6, KeyCode21
		 Ret

KeyCode01: SetB F0
		   Mov R7, #90h
		   Mov P1, R7
		   Ret

KeyCode11: SetB F0
		   Mov R7, #80h
		   Mov P1, R7
		   Ret

KeyCode21: SetB F0
		   Mov R7, #0F8h 
		   Mov P1, R7
		   Ret

IDCode3: Jnb P0.4, KeyCode00
		 Jnb P0.5, KeyCode10
		 Jnb P0.6, KeyCode20
		 Ret

KeyCode00: SetB F0
		   Mov R7, #01h
		   Mov P1, R7
		   Ret

KeyCode10: SetB F0
		   Mov R7, #0C0h 
		   Mov P1, R7
		   Ret

KeyCode20: SetB F0
		   Mov R7, #04ch 
		   Mov P1, R7
		   Ret