;Escribir otra funci´on modArray que toma el mismo array del punto anterior y modifica sus valores, dividiendo por 4 y restando uno a los multiplos de 4 y multiplicando por 5 y restando uno al resto.
;	modArray(*p,size)
;		for f=0; f<size; f++
;			if (p[f] es mult4) p[f]=p[f]/4
;			else p[f]=p[f]*5-1

main:
	SET R7, 0xFF	;stack
	SET R0, p		;p
	SET R1, 0x10	;size

	CALL |R7|, modarray

halt:
	JMP halt

modarray:
	PUSH |R7|, R0
	PUSH |R7|, R1
	PUSH |R7|, R3
	PUSH |R7|, R4
	PUSH |R7|, R5

	SET R3, 0x01
	SET R5, 0x00
	
	loop:	
		CALL |R7|, evaluar
		ADD R0, R3
		SUB R1, R3
		CMP R1, R5
		JZ ret
		JMP loop
	
	evaluar:
		LOAD R4, [R0]
		PUSH |R7|, R4
		SHL R4, 6
		CMP R4, R5 
		POP |R7|, R4
		JZ div4
		PUSH |R7|, R2
		MOV R2, R4
		SHL R4, 2
		ADD R4, R2
		SUB R4, R3
		STR [R0], R4
		POP |R7|, R2
		RET |R7|

	div4:
		SHR R4, 2
		SUB R4, R3
		STR [R0], R4
		RET |R7|

	ret:
		POP |R7|, R5
		POP |R7|, R4
		POP |R7|, R3
		POP |R7|, R1
		POP |R7|, R0
		RET |R7|	

p:
DB 0x01
DB 0x02
DB 0x04
DB 0x08
DB 0x03
DB 0x03
DB 0xA1
DB 0xC0
DB 0xFF
DB 0x40
DB 0x55
DB 0xCC
DB 0xBD
DB 0x45
DB 0x9A
DB 0xEE