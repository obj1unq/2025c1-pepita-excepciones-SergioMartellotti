# Pepita (parte 2)

Este ejercicio extiende la versión inicial de pepita para que les estudiantes agreguen
sus primeras líneas en wollok luego de la explicación del docente.

## Ejercicio 1: Pepón

Agregar a Pepón: Es otra ave que puede comer el alpiste y la manzana y sigue las siguientes reglas:

- La energía inicial de Pepón es 30.
- Sabe decir su energía. 
- Cuando come, solo puede aprovechar la mitad de la energía que aporta el alimento.
- Cuando vuela gasta 20 fijos más 2 joules por km. 

Ejemplos:
- si tiene 30 de energía y come alpiste su nueva energía es 30 + 20/2 = 40 
- si tiene 30 de energía y vuela 3 km su nueva energía es: 30 - 20 - 2*3 = 4


## Ejercicio 2: Roque
Agregar a Roque, que es una persona.

### Ave de Roque
Tiene un ave, a veces es Pepón, a veces es Pepita, por lo tanto tiene que entender un mensaje para que se le indique cual es su ave. Inicialmente es Pepita.

### Alimentar

 Entiende el mensaje *alimentar*, que recibe un alimento por parámetro. Al recibir este mensaje Roque alimenta a su ave. 

Ejemplos:
- Si tiene a Pepón con energía de 30, y recibe el mensaje alimentar(alpiste) Pepón queda con 40 de energía
- Si tiene a Pepita con energía de 100 y recibe el mensaje alimentar(alpiste) pepita queda con 120 de energía.

### Cenas

Entiende el mensaje *cenas* sin parámetros, el cual devuelve la cantidad de veces que Roque alimentó a su ave desde que es la suya (pensar como hacer para recordar este dato y que pasa al cambiar de ave).


## Ejercicio 3: Excepciones al volar
Las aves cada una tiene sus virtudes y defectos, por lo que a veces no pueden hacer lo que se les pide.
Pepita y Pepón al querer volar deben tener suficiente energía, si no no pueden cumplir con la responsabilidad que se les pide. 
Cuando un objeto no puede cumplir con su responsabilidad debe lanzar una excepción.
  
Se pide 
* Implementar las validaciones y consultas correspondientes realizando las modificaciones a los objetos ya resueltos para garantizar que un ave solo puede volar bajo las condiciones dadas o lance una excepción. 

Ejemplos: 
 Suponiendo que Pepita tiene energia 100 y Pepón 30.
 
 * Tanto Pepita como Pepón pueden volar 4 kms.
 * Pepón no puede volar 6 kms.
 * Ninguna puede volar 100 kms.

## Ejercicio BONUS: Excepciones al comer
 A Pepón le gusta alimentarse de manera variada y balanceada, por lo que solo come variado. Si se le da de comer lo mismo que comió la última vez se niega. Al iniciar el sistema se sabe que pepón comió manzana la última vez.

Se pide 
* Implementar las validacionesa y consultas correspondientes realizando las modificaciones en Pepón, para garantizar que no puede comer la misma comida que comió la última vez.

Ejemplos: 
 Suponiendo que Pepón tiene 30 de energia y comió manzana la última vez.
 
 * Puede comer alpiste, quedando su energia en 40. Pero si luego intenta comer alpiste nuevamente NO PUEDE, quedando en 40 su energia.
 * Si luego come manzana lo hace sin problema, pero luego NO PUEDE comer manzana otra vez, pero sí alpiste.

### Que pasa con las cenas?
Pensar (y modificar si hace falta) que sucede con la cantidad de cenas que contesta roque cuando le da de comer dos veces seguidas a pepón.
¿Debe devolver 1 o 2?  ¿Cuál era la responsabilidad del mensaje `cenas()`? ¿Cuántas veces la cumplió?
 
## Ejercicio BONUS con colecciones: Milena la entrenadora

Milena es una entrenadora de aves que puede entrenar a varias a la vez. Cuando Milena recibe el mensaje movilizar(distancia), hace que todas sus aves se muevan esa distancia.

Se pide 
* Implementar a Milena, 
* Realizar las modificaciones a los objetos ya resueltos para garantizar que un ave no puede volar una distancia mayor a la de su energia. 
* Tener en cuenta que Milena no puede movilizar sus aves si alguna de ellas no puede recorrer esa distancia.

Ejemplos: 
 Suponiendo que Milena tiene a Pepita y a Pepón, con sus respectivas energias iniciales (100 y 30).
 
 * Tanto pepita como Pepón pueden volar 4 kms. Por lo tanto Milena puede movilizarlas.
 * Pepita puede volar 6 kms, pero Pepón no. Por lo tanto Milena no puede movilizarlas. ¡¡¡Si se intenta movilizarlas ambas deben quedar con su energia inicial!!!
 * Ni Pepita, ni Pepón pueden volar 100 km.
 
 
 
 
 











