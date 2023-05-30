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
