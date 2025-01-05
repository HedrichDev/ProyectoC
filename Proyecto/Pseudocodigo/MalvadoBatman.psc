Proceso MalvadoBatman
    // Declaración de constantes
    Definir SIZE Como Entero
    SIZE <- 8
	
    // Declaración de variables
    Definir mapa Como Cadena[SIZE]
    Definir villanos Como Entero[SIZE][2] // Para almacenar posiciones de villanos
    Definir amigosContador Como Entero[6] // Contador de amigos para 6 villanos
    Definir posicionesVillanos Como Cadena[6] // Nombres de los villanos
    Definir villanosCount Como Entero
    villanosCount=0
	
    // Inicializar contadores de amigos
    Para i Desde 0 Hasta 5 Hacer
        amigosContador[i] = 0
    Fin Para
	
    // Inicializar nombres de villanos
    posicionesVillanos[0] = "Harley Quinn"
    posicionesVillanos[1] = "Acertijo"
    posicionesVillanos[2] = "Catwoman"
    posicionesVillanos[3] = "El Joker"
    posicionesVillanos[4] = "Poison Ivy"
    posicionesVillanos[5] = "El Pingüino"
	
    // Introducir el mapa
    Escribir "Introduce el mapa de la Ciudad Lego de Batman (8 filas, 8 columnas con 'X' y 'O'):"
    Para i Desde 0 Hasta SIZE - 1 Hacer
        Escribir "Fila ", i + 1, ": "
        Leer mapa[i]
		
        // Validar que la entrada tenga la longitud correcta y contenga solo 'X' y 'O'
        Mientras Longitud(mapa[i]) <> SIZE O Encontrar(mapa[i], "X") = 0 Y Encontrar(mapa[i], "O") = 0 Hacer
            Escribir "Entrada inválida. Asegúrate de que la fila tenga exactamente ", SIZE, " caracteres ('X' y 'O' solamente): "
            Leer mapa[i]
        Fin Mientras
    Fin Para
	
    // Verificación de filas para 'XXX' (Harley Quinn)
    Para i Desde 0 Hasta SIZE - 1 Hacer
        Para j Desde 0 Hasta SIZE - 3 Hacer
            Si Subcadena(mapa[i], j, 3) = "XXX" Entonces
                villanos[villanosCount][0] = i
                villanos[villanosCount][1] = j + 2
                amigosContador[0] = amigosContador[0] + 1 // Contando amigos de Harley
                villanosCount = villanosCount + 1
            Fin Si
        Fin Para
    Fin Para
	
    // Verificación para el Acertijo y Catwoman
    Para i Desde 1 Hasta SIZE - 2 Hacer
        Para j Desde 1 Hasta SIZE - 2 Hacer
            // Verifica el movimiento en 'L' para el Acertijo
            Si mapa[i][j] = 'O' Entonces
                Si (i - 2 >= 0 Y j - 1 >= 0 Y mapa[i - 2][j - 1] = 'X') O
					(i - 2 >= 0 Y j + 1 < SIZE Y mapa[i - 2][j + 1] = 'X') O
					(i + 2 < SIZE Y j - 1 >= 0 Y mapa[i + 2][j - 1] = 'X') O
					(i + 2 < SIZE Y j + 1 < SIZE Y mapa[i + 2][j + 1] = 'X') Entonces
                    amigosContador[1] = amigosContador[1] + 1 // Contando amigos del Acertijo
                Fin Si
				
                // Verificación para Catwoman
                Si mapa[i - 1][j - 1] = 'X' Y mapa[i - 1][j + 1] = 'X' Y
					mapa[i + 1][j - 1] = 'X' Y mapa[i + 1][j + 1] = 'X' Entonces
                    amigosContador[2] = amigosContador[2] + 1 // Contando amigos de Catwoman
                Fin Si
            Fin Si
			
            // Verificación del Joker
            Si mapa[i][j] = 'X' Y i - 1 >= 0 Y j + 1 < SIZE Y mapa[i - 1][j + 1] = 'X' Entonces
                amigosContador[3] = amigosContador [3] + 1 // Contando amigos del Joker
            Fin Si
			
            // Verificación de Poison Ivy
            Si mapa[i][j] = 'X' Entonces
                Si j > 0 Y j < SIZE - 1 Y mapa[i][j - 1] = 'X' Y mapa[i][j + 1] = 'X' Entonces
                    amigosContador[4] = amigosContador[4] + 1 // Contando amigos de Poison Ivy
                Fin Si
            Fin Si
			
            // Verificación del Pingüino
            Si mapa[i][j] = 'O' Y i + 1 < SIZE Y j + 1 < SIZE Y mapa[i + 1][j + 1] = 'O' Entonces
                amigosContador[5] = amigosContador[5] + 1 // Contando amigos del Pingüino
            Fin Si
        Fin Para
    Fin Para
	
    // Mostrar resultados
    Escribir "Resultados de amigos encontrados:"
    Para i Desde 0 Hasta 5 Hacer
        Escribir "Amigos de ", posicionesVillanos[i], ": ", amigosContador[i]
    Fin Para

Fin Proceso