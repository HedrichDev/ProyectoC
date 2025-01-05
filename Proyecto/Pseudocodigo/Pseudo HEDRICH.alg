Algoritmo de EncontrarAmigosVillanos

Declaración
    constantes
    // Declaración de constantes
    FILAS <- 8
    COLUMNAS <- 8

    variables
    // Declaración de variables
    VILLANOS_ENCONTRADOS: ENTERO
    VILLANO_CON_MAS_AMIGOS: ENTERO
    MAX_AMIGOS: ENTERO
    AMIGOS_DEL_ACERTIJO: ENTERO
    AMIGOS_DE_CATWOMAN: ENTERO
    VILLANOS_CON_OTROS_ALREDEDOR: ENTERO
    AMIGOS_VILLANOS_EN_MISMA_POSICION: ENTERO
    X, O: CARACTER
    mapa: Arreglo de Cadena [FILAS]
    posicionesVillanos: Arreglo de Arreglo de ENTERO [FILAS][COLUMNAS]
    amigosContador: Arreglo de ENTERO [5] // Para contar amigos de cada villano
    i, j: ENTERO

INICIO
    // Inicializar todos los contadores a 0
    VILLANOS_ENCONTRADOS <- 0
    VILLANO_CON_MAS_AMIGOS <- 0
    MAX_AMIGOS <- 0
    AMIGOS_DEL_ACERTIJO <- 0
    AMIGOS_DE_CATWOMAN <- 0
    VILLANOS_CON_OTROS_ALREDEDOR <- 0
    AMIGOS_VILLANOS_EN_MISMA_POSICION <- 0

    // Inicializar el arreglo de amigosContador
    PARA i <- 0 HASTA 4 HACER
        amigosContador[i] <- 0
    FIN PARA

    // Leer el mapa
    PARA i <- 0 HASTA filas - 1 HACER
        Escribir "Fila ", i + 1, ": "
        LEER mapa[i]
    FIN PARA

    // Detectar villanos y amigos
    PARA i <- 0 HASTA filas - 1 HACER
        PARA j <- 0 HASTA columnas - 1 HACER
            SI mapa[i][j] = 'X' ENTONCES
                VILLANOS_ENCONTRADOS <- VILLANOS_ENCONTRADOS + 1
                // Verificar amigos del Acertijo
                SI (i - 2 >= 0 Y j - 1 >= 0 Y mapa[i - 2][j - 1] = 'O') O
                   (i - 2 >= 0 Y j + 1 < columnas Y mapa[i - 2][j + 1] = 'O') O
                   (i + 2 < filas Y j - 1 >= 0 Y mapa[i + 2][j - 1] = 'O') O
                   (i + 2 < filas Y j + 1 < columnas Y mapa[i + 2][j + 1] = 'O') ENTONCES
                    AMIGOS_DEL_ACERTIJO <- AMIGOS_DEL_ACERTIJO + 1
                FIN SI

                // Verificar amigos de Catwoman
                SI (i - 1 >= 0 Y j - 1 >= 0 Y mapa[i - 1][j - 1] = 'O') Y
                   (i - 1 >= 0 Y j + 1 < columnas Y mapa[i - 1][j + 1] = 'O') Y
                   (i + 1 < filas Y j - 1 >= 0 Y mapa[i + 1][j - 1] = 'O') Y
                   (i + 1 < filas Y j + 1 < columnas Y mapa[i + 1][j + 1] = 'O') ENTONCES
                    AMIGOS_DE_CATWOMAN <- AMIGOS_DE_CATWOMAN + 1
                FIN SI
            FIN SI
        FIN PARA
    FIN PARA

      // Imprimir resultados
    Escribir "Villanos encontrados: ", VILLANOS_ENCONTRADOS
    Escribir "Amigos del Acertijo: ", AMIGOS_DEL_ACERTIJO
    Escribir "Amigos de Catwoman: ", AMIGOS_DE_CATWOMAN
    Escribir "Villano con más amigos: ", VILLANO_CON_MAS_AMIGOS
    Escribir "Villanos con otros alrededor: ", VILLANOS_CON_OTROS_ALREDEDOR
    Escribir "Amigos y villanos en la misma posición: ", AMIGOS_VILLANOS_EN_MISMA_POSICION
FIN Algoritmo