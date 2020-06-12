;
;	PRACTICA MASM
;	SUCESION DE FIBONNACI
;	MIGUEL MARQUEZ
;	CARACAS, JUNIO 2020
;

TITLE Sucesion de Fibonacci

.386		;procesadores x86, modo protegido
.MODEL small
.STACK 4096	
	
.DATA		; seccion de memoria de variables no inicializadas

	buffer 	BYTE	? 		; reservar 8 bits

.CODE		; seccion de codigo de la memoria
 
	menu PROC			; subrutina principal

		mov eax, 0d		; inicializar el registro eax con 0 decimal
		mov ebx, 1d		; inicializar el registro ebx con 1 decimal
		
		mov cx, 12d

		bucleFibonacci: 	; bucle de 12 ciclos

			add al, bl 	; sumar el numero siguiente con el anterior
			mov bl, buffer	; guardar el numero anterior
			mov buffer, al	; guardar el numero siguiente
			
		LOOP bucleFibonacci

	menu ENDP
	END menu			; fin de la subrutina principal
