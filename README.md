# !  Hola 👋, Este es el BatiProyecto en C++ del grupo de HΞDЯICH 
![](https://github.com/HedrichDev/ProyectoC/blob/main/Integrantes%20del%20Grupo.png)

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

[<img
        src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExbTVoZXM1YWk2dm9kcWxwMTBkeWxoYjc3Z2VrdzN2MmxrOHh0cnlwYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/stMnmS3dgqp6iVigwH/giphy.webp" 
        width=150%
        title="BATMAN"
        alt="BATMAN"
    />
](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExbTVoZXM1YWk2dm9kcWxwMTBkeWxoYjc3Z2VrdzN2MmxrOHh0cnlwYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/stMnmS3dgqp6iVigwH/giphy.webp)  


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

[<img
        src="https://i.pinimg.com/originals/fa/4c/8b/fa4c8bd3ad851273d3e2eb77e072196a.png" 
        width=15%
        title="Joker"
        alt="Joker"
    />
](https://i.pinimg.com/originals/fa/4c/8b/fa4c8bd3ad851273d3e2eb77e072196a.png)
[<img
        src="https://i.pinimg.com/originals/36/e1/a9/36e1a97f30edd8e4d773d59c92641bba.png" 
        width=12%
        title="Harley"
        alt="Harley"
    />
](https://i.pinimg.com/originals/fa/4c/8b/fa4c8bd3ad851273d3e2eb77e072196a.png)
[<img
        src="https://i.pinimg.com/originals/80/58/3a/80583a1b1163295319cccb972bd7fda7.png" 
        width=7%
        title="Poison "
        alt="Poison"
    />
](https://i.pinimg.com/originals/80/58/3a/80583a1b1163295319cccb972bd7fda7.png)
[<img
        src="https://i.pinimg.com/originals/ec/38/2a/ec382abc5050544e0066315f0de46eef.png" 
        width=12%
        title="Acertijo "
        alt="Acertijo"
    />
](https://i.pinimg.com/originals/ec/38/2a/ec382abc5050544e0066315f0de46eef.png)
[<img
        src="https://i.pinimg.com/originals/07/47/c8/0747c85b290b2041e38cbb879ea1ad0c.png" 
        width=12%
        title="Catwoman "
        alt="Catwoman"
    />
](https://i.pinimg.com/originals/07/47/c8/0747c85b290b2041e38cbb879ea1ad0c.png)
[<img
        src="https://i.pinimg.com/originals/da/26/b6/da26b68c83535d2f2b32ffe56ea34e64.png" 
        width=20%
        title="Pinguino "
        alt="Pinguino"
    />
](https://i.pinimg.com/originals/da/26/b6/da26b68c83535d2f2b32ffe56ea34e64.png)


**3.  Contador de Amigos: **El programa cuenta cuántos amigos tiene cada villano basado en las reglas definidas por el Profesor Alejandro de la Materia

### Funcionamiento del Proyecto
***
**Entrada del Usuario:**

- El programa solicita al usuario que introduzca el mapa de la ciudad, fila por fila. Cada fila debe contener exactamente 8 caracteres entre ('X' y/o 'O').
- Se valida la entrada para asegurarse de que cumpla con las especificaciones.

** Detección de Villanos y Amigos:**
- Una vez que se ha ingresado el mapa, el programa llama a la función detectarVillanosYAmigos, que realiza el análisis del mapa.
- Se utilizan bucles anidados para recorrer cada posición del mapa y aplicar condiciones específicas para detectar a los villanos y contar sus amigos:

- **Harley Quinn:** Se busca la secuencia 'XXX' en cada fila.
- **Acertijo:** Se verifica si hay un 'O' en una posición específica y si hay 'X' en posiciones en forma de 'L'.
- **Catwoman:** Se verifica si hay 'X' en las posiciones diagonales alrededor de un 'O'.
- **El Joker:** Se verifica si hay un 'X' en una posición específica en relación con otro 'X'.
- **Poison Ivy:** Se verifica si hay 'X' a la izquierda y derecha de un 'X'.
- **El Pingüino:** Se verifica si hay 'O' en posiciones específicas.


### Almacenamiento de Resultados:
****
- Las posiciones de los villanos se almacenan en un mapa (estructura de datos) que asocia el nombre del villano con sus coordenadas en el mapa.
- Se cuenta el número de amigos de cada villano y se almacena en otro mapa.


##### Salida de Resultados:
****
- Al final del análisis, el programa imprime las posiciones de los villanos y el número de amigos que tiene cada uno.
- La salida incluye las coordenadas de los villanos, comenzando desde 1 (para que sea más intuitivo para el usuario) y el conteo total de villanos.


## Recomendaciones para Ejecutar el Código ❗ ❗

#### ❗Descargar el Archivo en Formato Zip
 Abrirlo en el IDE de Preferencia... recomendamos [Online GBD](https://www.onlinegdb.com "Online GBD"), debido a que Visual Studio Code puede presentar fallos a la hora de compilar o errores comunes de librerias, aca te proporcionamos el link del proyecto en [Online Gdb AQUI](https://onlinegdb.com/iMQNxolkv "Online Gdb AQUI")  y podras correr el programa de forma Online sin necesidad de descargar el codigo.
 
- 
#### ❗Entorno de Ejecución:

Si no usas ONLINE GDB, asegúrate de que el entorno de programación utilizado soporte C++ y tenga configurado un compilador adecuado.

#### ❗Validación de Entrada:

- Debes Introducir un mapa que cumpla con las especificaciones: 8 filas y 8 columnas utilizando solo 'X' y 'O'. Cualquier entrada inválida será rechazada.
- Las Entradas de las 'X' y 'O'  deben ser **UNICAMENTE** en **MAYUSCULAS**
- Las Entradas ('X' y 'O' )no deben estar Separadas es decir: XXXOXXXO
- 
EJEMPLO:``
`XXXXXXXX`
`OOOOOOOO`
`XOXOXOXO`
`OXOXOXOX`
`XXOOXXOO`
`XXOOOOXX`

![](https://github.com/HedrichDev/ProyectoC/blob/main/ejemplo%20de%20introduccion%20de%20datos.png?raw=true)
>Ejemplo de Introduccion de Datos en OnlineGBD

![](https://github.com/HedrichDev/ProyectoC/blob/main/Proyecto/C++/Ejemplo%20de%20Codigo%20Corrido%20en%20Online%20GDB.png?raw=true)
>Ejemplo de Codigo corrido en Online GDB 
<br>
<br>

## Para leer el Pseudocodigo ❗ ❗
***
- Recomiendo Usar  [Visual Studio Code]( https://code.visualstudio.com/Download "Descargar Visual Studio Code") [<img
        src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/2048px-Visual_Studio_Code_1.35_icon.svg.png" 
        width=3%
        title="Visual Studio Code"
        alt="Visual Studio Code"
    />
](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/2048px-Visual_Studio_Code_1.35_icon.svg.png)  

- Debe abrir el archivo .Algo Con la SIguiente Extension Pseudocodigo ES  [( DESCARGAR AQUI)]( https://marketplace.visualstudio.com/items?itemName=Kkai.pseudocodigo-es "Descargar Extension Pseudocodigo ES")
[<img
        src="https://kkai.gallerycdn.vsassets.io/extensions/kkai/pseudocodigo-es/0.3.0/1720443162865/Microsoft.VisualStudio.Services.Icons.Default" 
        width=10%
        title="Pseudocódigo ES"
        alt="Pseudocódigo ES"
    />
](https://kkai.gallerycdn.vsassets.io/extensions/kkai/pseudocodigo-es/0.3.0/1720443162865/Microsoft.VisualStudio.Services.Icons.Default)

- Recomiendo Usar Dicha  Extencion Debido a que permite leer el codigo de manera mas sencilla gracias a que coloca en diferentes colores variables, constantes, palabras reservadas etc

- 

![image](https://github.com/user-attachments/assets/a145ee69-0a40-45fb-99c6-a79e59902dcb)

[<img
        src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExcDYzeXhpd3cwZGtrc3B0N2FncHZ0eWJscnBma2VrM2w5dWx5M2wwbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Phfubr9dlNDmE/giphy.webp" 
        width=150%
        title="BATMAN"
        alt="BATMAN"
    />
](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExcDYzeXhpd3cwZGtrc3B0N2FncHZ0eWJscnBma2VrM2w5dWx5M2wwbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Phfubr9dlNDmE/giphy.webp)  







[<img
        src="https://i.pinimg.com/originals/fa/4c/8b/fa4c8bd3ad851273d3e2eb77e072196a.png" 
        width=5%
        title="Joker"
        alt="Joker"
    />
](https://i.pinimg.com/originals/fa/4c/8b/fa4c8bd3ad851273d3e2eb77e072196a.png)
[<img
        src="https://i.pinimg.com/originals/36/e1/a9/36e1a97f30edd8e4d773d59c92641bba.png" 
        width=3%
        title="Harley"
        alt="Harley"
    />
](https://i.pinimg.com/originals/fa/4c/8b/fa4c8bd3ad851273d3e2eb77e072196a.png)
[<img
        src="https://i.pinimg.com/originals/80/58/3a/80583a1b1163295319cccb972bd7fda7.png" 
        width=2%
        title="Poison "
        alt="Poison"
    />
](https://i.pinimg.com/originals/80/58/3a/80583a1b1163295319cccb972bd7fda7.png)
[<img
        src="https://i.pinimg.com/originals/ec/38/2a/ec382abc5050544e0066315f0de46eef.png" 
        width=3%
        title="Acertijo "
        alt="Acertijo"
    />
](https://i.pinimg.com/originals/ec/38/2a/ec382abc5050544e0066315f0de46eef.png)
[<img
        src="https://i.pinimg.com/originals/07/47/c8/0747c85b290b2041e38cbb879ea1ad0c.png" 
        width=5%
        title="Catwoman "
        alt="Catwoman"
    />
](https://i.pinimg.com/originals/07/47/c8/0747c85b290b2041e38cbb879ea1ad0c.png)
[<img
        src="https://i.pinimg.com/originals/da/26/b6/da26b68c83535d2f2b32ffe56ea34e64.png" 
        width=6%
        title="Pinguino "
        alt="Pinguino"
    />
](https://i.pinimg.com/originals/da/26/b6/da26b68c83535d2f2b32ffe56ea34e64.png)






