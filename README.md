# !  Hola 👋, Este es el BatiProyecto en C++ del grupo de HEDRICH 
![](https://github.com/HedrichDev/ProyectoC/blob/main/image.png?raw=true)

El Presente Proyecto fue realizado por alumnos de Informatica de la Universidad de Oriente UDO [<img
        src="https://raw.githubusercontent.com/HedrichDev/ProyectoC/refs/heads/main/LOGO%20UDONE.png" 
        width=3%
        title="Logo UDO"
        alt="Logo UDO"
    />
](https://raw.githubusercontent.com/HedrichDev/ProyectoC/refs/heads/main/LOGO%20UDONE.png) de la seccion 0501, Nueva Esparta, Venezuela

## Integrantes del Proyecto 
> 👥 Christopher Hedrich C.I 31.821.175
> 
> 👥 Oswerluis De Jesús Gómez González C.I. 32.240.500
> 
> 👥 José Manuel Hurtado Marcano C.I: 32.045.013
> 
> 👥 Johandrys Viviana Mieres Granado C.I: 32.619.576
> 
> 👥 Juan Vidal Rosas Campos C.I 33.057.644
> 
> 👥 Adrián Gabriel Martinez Costales C.I:32.923.667

# Descripción del Proyecto
### Objetivo
***
El objetivo del proyecto es permitir al usuario ingresar un mapa de 8x8 que representa una ciudad, donde los caracteres 'X' y 'O' se utilizan para representar a los villanos y amigos, respectivamente. El programa analiza este mapa para detectar la posición de varios villanos y contar cuántos amigos tiene cada uno.

### Componentes del Proyecto
***
**1. Mapa:** Un arreglo bidimensional (en forma de vector de strings) que representa la ciudad. Cada fila del mapa tiene exactamente 8 caracteres, que pueden ser 'X' (villano) o 'O' (amigo).

**2. Villanos:** El programa está diseñado para detectar a varios villanos específicos:

- **Harley Quinn:** Representada por 'XXX' en una fila.
- **Acertijo:** Representado por 'O' y tiene amigos en posiciones específicas.
- **Catwoman:** Tiene amigos en posiciones específicas alrededor de ella.
- **El Joker:** Detectado por la presencia de 'X' en posiciones específicas.
- **Poison Ivy:** Tiene amigos en posiciones específicas.
- **El Pingüino:** También tiene amigos en posiciones específicas.

**3.  Contador de Amigos: **El programa cuenta cuántos amigos tiene cada villano basado en las reglas definidas por el Profesor Alejandro de la Materia

### Funcionamiento del Proyecto
***
**Entrada del Usuario:**

- El programa solicita al usuario que introduzca el mapa de la ciudad, fila por fila. Cada fila debe contener exactamente 8 caracteres entre ('X' y/o 'O').
- Se valida la entrada para asegurarse de que cumpla con las especificaciones.

** Detección de Villanos y Amigos:**
- Una vez que se ha ingresado el mapa, el programa llama a la función detectarVillanosYAmigos, que realiza el análisis del mapa.
- Se utilizan bucles anidados para recorrer cada posición del mapa y aplicar condiciones específicas para detectar a los villanos y contar sus amigos:

- **Harley Quinn: **Se busca la secuencia 'XXX' en cada fila.
- **Acertijo:** Se verifica si hay un 'O' en una posición específica y si hay 'X' en posiciones en forma de 'L'.
- **Catwoman: **Se verifica si hay 'X' en las posiciones diagonales alrededor de un 'O'.
- **El Joker: **Se verifica si hay un 'X' en una posición específica en relación con otro 'X'.
- **Poison Ivy:** Se verifica si hay 'X' a la izquierda y derecha de un 'X'.
- **El Pingüino: **Se verifica si hay 'O' en posiciones específicas.


### Almacenamiento de Resultados:
****
- Las posiciones de los villanos se almacenan en un mapa (estructura de datos) que asocia el nombre del villano con sus coordenadas en el mapa.
- Se cuenta el número de amigos de cada villano y se almacena en otro mapa.


##### Salida de Resultados:
****
- Al final del análisis, el programa imprime las posiciones de los villanos y el número de amigos que tiene cada uno.
- La salida incluye las coordenadas de los villanos, comenzando desde 1 (para que sea más intuitivo para el usuario) y el conteo total de villanos.


## Reglas y Recomendaciones para Ejecutar el Código

#### - Descargar el Archivo en Formato Zip
 Abrirlo en el IDE de Preferencia... recomendamos [Online GBD](https://www.onlinegdb.com "Online GBD"), debido a que Visual Studio Code puede presentar fallos a la hora de compilar o errores comunes de librerias, aca te proporcionamos el link del proyecto en [Online Gdb AQUI](https://onlinegdb.com/iMQNxolkv "Online Gdb AQUI")  y podras correr el programa de forma Online sin necesidad de descargar el codigo.


####Entorno de Ejecución:

Asegúrate de que el entorno de programación soporte C++ y tenga configurado un compilador adecuado.

####Validación de Entrada:

- Debes Introducir un mapa que cumpla con las especificaciones: 8 filas y 8 columnas utilizando solo 'X' y 'O'. Cualquier entrada inválida será rechazada.
- Las Entradas de las 'X' y 'O'  deben ser **UNICAMENTE** en **MAYUSCULAS**
- Las Entradas ('X' y 'O' )no deben estar Separadas es decir: XXXOXXXO
- 
EJEMPLO:
`XXXXXXXX`
`OOOOOOOO`
`XOXOXOXO`
`OXOXOXOX`
`XXOOXXOO`
`XXOOOOXX`

![]()
>Ejemplo de Introduccion de Datos en 
<br>
<br>
<br>
<br>
<br>


![](https://cdn.beacons.ai/user_content/9gId3uiraCfpOWOK1E0evDYEjyw2/referenced_images/e2c53611-8419-44a6-aa39-5ed4123b8109__link-in-bio__image-block__home__d1c18573-c5c1-436c-a579-c4b5d7984caf__686e7412-cbfe-4602-b9bd-28e0b27b4fa3.png?t=1679753972703)
>Marketing_Hedrich


