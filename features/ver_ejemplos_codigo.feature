#language: es

Característica: ver ejemplos de codigo
	Como usuario quiero poder buscar ejemplos de código que tenga el tema que estoy aprendiendo
	para visualizarlos, usarlos de ejemplo y aprender mejor
	
Escenario: Visualizar ejemplos de codigo exitosamente
    Dado que llega un "<usuario>" a visualizar "<Ejemplo de código de Recursividad>"
    Y el ejemplo de código existe
    Cuando el "<usuario>" lo visualiza
    Entonces el "<usuario>" lo usa de ejemplo y aprende 

Escenario: No existe ese ejemplo de código en GitHub
    Dado que llega un "<usuario>" a visualizar "<Ejemplo de código de Recursividad>"
    Y el ejemplo de código no existe en "<GitHub>"
    Cuando se busca el ejemplo de código "<Ejemplo de código de Recursividad>"
    Entonces se le notifica al "<usuario>" que no tenemos ese ejemplo de código
    Y no se visualiza "<Ejemplo de código de Recursividad>"
	
Escenario: El ejemplo de código es irrelevante o incorrecto 
    Dado que llega un "<usuario>" a visualizar "<Ejemplo de código de Recursividad>"
    Y el ejemplo de código  es incorrecto o irrelevante
    Cuando se busca el ejemplo de código "<Ejemplo de código de Recursividad>"
    Entonces el "<usuario>" ve ejemplos incorrectos de código 
    Pero son irrelevantes o incorrectos los "<Ejemplos de código de Recursividad>"
    Y no se aprende "<Ejemplo de código de Recursividad>" efectivamente.
    Y el "<usuario>" puede notificar el error


