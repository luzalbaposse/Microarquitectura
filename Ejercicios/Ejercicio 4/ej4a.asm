;Escribir la función cantPares que toma un array de enteros positivos en memoria y cuenta cuantos elementos pares tiene.
;	cantPares(*p,size)
;		for f=0; f<size; f++
;			if (p[f] es par) count++
;		return count

main:
	SET R7, 0xFF	;stack
	SET R0, p		;p
	SET R1, 0x10	;size

	CALL |R7|, cantpares

halt:
	JMP halt

cantpares:
	PUSH |R7|, R0
	PUSH |R7|, R1
	PUSH |R7|, R3
	PUSH |R7|, R5
	PUSH |R7|, R6
	SET R4, 0x00
	SET R3, 0x01
	SET R5, 0x00

	loop:	
		CALL |R7|, shift
		SUB R1, R3
		CMP R1, R5
		JZ ret
		JMP loop

	shift:
		LOAD R6, [R0]
		ADD R0, R3
		SHL R6, 7
		CMP R6, R5
		JZ zero
		RET |R7|

	zero:
		ADD R4, R3
		RET |R7|

	ret:
		POP |R7|, R6
		POP |R7|, R5
		POP |R7|, R3
		POP |R7|, R1
		POP |R7|, R0
		
		RET|R7|

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