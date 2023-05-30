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
	; COMPLETAR
	
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
