Historias de usuario:

 Glosario:
    Cliente: Dueño del bookstore, que vende a sus clientes estudiantes de programación.
    Usuario: El que usa la app
    Libros:libros de programación en formato fisico y virtual
    Formato virtual: Puede ser en .pdf, .epub, .md YAML Front Matter u otro formato. (Discutir con el cliente los formatos.)
    API de envios: OCA, ANDREANI (nacionales). EASYPOSRT, SHIPPO (internacional).
    Datos relevantes para la venta: Dirección, nro tarjeta, nro de dni, mail.
    Usuario: estudiante de algun lenguaje de programación
    Informacion necesaria del autor: Carrera profecional (libros, proyectos, etc, repositorios virtuales como por ejemplo GitHub)
    Escala de confiabilidad del autor: Es una escala predefinida en la que el autor más confiable es el mismo creador del lenguaje, patron de diseño o tema, el intermedio sería algún programador con muy buenos proyectos realizados y trabajos y el menos confiable sería alguno que no tenga proyectos confiables buenos y conocidos ni sea el autor.
    Codigo de ejemplo: Es un fragmento de codigo sacado de repositorios de github. Por ejemplo una clase, una interface, funcion sync,un cliclo for, while o do while.
/********************************************************************/

EPIC SP 13 VP 21 VP/SP = 1.61
US VENDER LIBROS  n° 1
Como <Cliente>
Quiero <vender libros en formato fisico y virtual>
Para <aumentar ventas, actualizarse y dar valor agregado>

Requisistos de US VENDER LIBROS n° 1:

Requisitos funcionales:
RF 01 : Que el Usuario se logee a la app
RF 02 : Que el Usuario se registre a la app
RF 02 : Que el Usuario visualice formulario de login
RF 03 : Que el Usuario visualice formulario de registro
RF 04 : Que el Usuario ingrese datos relevantes para la venta en la app
RF 05 : Que el Usuario ingrese datos de preferencias relevantes para busqueda de libros.
RF 06 : Que el Usuario busque el libro que quiere por categoría, lenguaje, nombre o autor. 
RF 07 : Que el Usuario visualise si hay stock fisico del libro para realizar la compra.
RF 08 : Que el Sistema pueda realizar pago automatico en la cuenta de banco o mp del cliente por la venta de libros.
RF 09 : Que el Usuario pueda comprar libros en formato virtual.
RF 10 : Que el Usuario pueda comprar libros en formato fisico.
RF 11 : Que el Usuario pueda visualizar un carrito.
RF 12 : Que el Usuario pueda editar su carrito de compras antes de la compra.
RF 13 : Que el Usuario visualice que se realizo la compra con exito.
RF 14 : Que el Usuario visualice formulario de pago
RF 15 : Que el Usuario pueda tener el libro en formato virtual en su mail listo para leer.
RF 16 : Que el Usuario pueda cerrar sesion.
RF 17 : Que el Usuario sienta seguridad al hacer los pagos.
RF 18 : Que el Cliente tenga una interfaz para ingresar su stock fisico y mantenerlo actualizado.

Requisitos no funcionales:
RNF 01 : Tener mucha seguridad en la realización de pagos.
RNF 02 : Integrar API de pagos para pagar de forma segura y así tener seguridad. 
RNF 03 : Persistir datos de login del usuario.
RNF 04 : Persistir la informacion relevante para la venta.
RNF 05 : Integrar API de envios.
RNF 06 : Persistir un inventario de los libros y categorizado.
RNF 07 : Crear DB relacional para el sistema.
RNF 08 : Crear para el sistema una capa con la lógica de la venta de libros.
RNF 09 : Crear para el sistema capa con lógica de busqueda de libros.
RNF 10 : Integrar API en el sistema para busqueda de libros y entrega en formato pdf. 
RNF 11 : Crear lógica para que el sistema mantenga en caché los intereses elegidos por el cliente para realizar busquedas más rapidas.
RNF 12 : Crear lógica para que el usuario busque libros por categoría, autor, titulo o lenguaje.
RNF 13 : Crear lógica para que el usuario visualice el stock disponible.
RNF 14 : Crear lógica para que el sistema envíe mails con el libro en formato virtual.
RNF 15 : Crear lógica para integrar cada API.
RNF 16 : Que el sistema funcione 24/7.
RNF 17 : EL sistema debe funcionar casi siempre. Máximo dos días sin funcionar por mantenimiento o fallas.
RNF 18 : Que el sistema sea escalable.
RNF 19 : Que el sistema sistema sea veloz, aceptable para el usuario. Máximo 2 o 3 segunso de espera.
RNF 20 : Utulizar Access tockens. Es más seguro que el caché en forma de coockies.
RNF 21 : Mantener actualizado el caché. (quizás usando programación asincronica si es necesario)
/********************************************************************/

EPIC SP 8 VP 21 VP/SP = 2.62
US Visualizar libros por escala de confiabilidad n° 2
Como <cliente>
Quiero <que los usuarios puedan ver los libros en escala de confiabilidad del autor y visualicen información util del autor>
Para <ofrecer fuentes certeras de información y así dar un valor agregado a la app>

Requisitos de US VISUALIZAR LIBROS POR ESCALA DE CONFIABILIDAD 2:

Requisitos funcionales:
RF 01 : Que el usuario visualice información útil del autor del libro que busca.
RF 02 : Que el usuario visualice en orden de escala de confiabilidad los libros de los lenguajes que busca o tema de programación.
RF 03 : Que el usuario busque libros de algún tema o lenguaje en especifico.

Requisitos no funcionales:
RNF 03 : Tener un caché o aun acces tockens de la información de los autores que se obtenga de la api de wikipedia
RNF 04 : Persistir un inventario del stock de los libros que tiene el bookstore
RNF 05 : Integrar una API de Wikipedia para poder sacar información de los autores del libro y su historia
RNF 06 : Realizar un algoritmo que contraste la informacion obtenida de la api de wikipedia del autor del libro para ver si es el creador del lenguaje, o tema y darle una puntuación.
RNF 07 : Que el sistema sea escalable
RNF 08 : Utulizar Access tockens. Es más seguro que el caché en forma de coockies.
RNF 09 : Que el sistema funcione 24/7, puede no funcionar máximo 2 dias.
RNF 10 : Velocidad aceptable para el usuario. 2 o 3 segundos máximo de espera.
RNF 11 : Mantener actualizado el caché.
RNF 12 : Utilizar base de datos del inventario.
RNF 13 : Crear algoritmo para la escala de confiabilidad de autores
RNF 14 : Tener interfaz de usuario para visualizar los libros y la informacion del autor en orden de confiabilidad.
RNF 15 : Tener backend para persistir informacion de intentario y utilizar APIs.

/********************************************************************/

De las US 1 y 2 se infiere que:
Utilizaremos una bd con relaciones
Necesitamos BackEnd
Necesitamos un FrontEnd con buena UI y buen UX.
Necesitamos APIs de envio, pago, venta de libros en pdf, (contrastación de información si se hace necesario) y wikipedia.
Lenguajes: Se puede usar Node.js para integrar la api de wikipedia, la api de OCA y la API de pagos. 
Tambien se puede usar Php, Python y Ruby. Se eligió Node.js porque es un lenguaje amigable, y la APP no necesita grandes esfuerzos y fiabilidad. Para frontEnd se puede utilizar Vue.js.
Necesitamos FrontEnd para el usuario y el cliente.


API para contrastar información obtenida del libro y darle un puntaje

IBM Watson Natural Language Understanding: Similar a la API de Google, permite analizar texto y extraer información sobre entidades, emociones, opiniones, etc. También ofrece la posibilidad de analizar la sintaxis y la gramática del texto. Con esta API podrías contrastar información en un texto y obtener un puntaje según el tipo de contenido que estés buscando.
Google Cloud Natural Language API: Esta API permite analizar texto y clasificarlo según su contenido, identificando entidades, emociones, opiniones, etc. También ofrece la posibilidad de analizar la sintaxis y la gramática del texto. Con esta API podrías contrastar información en un texto y obtener un puntaje según el tipo de contenido que estés buscando.

Diffbot: Esta API permite extraer información estructurada de páginas web, lo que podría ayudarte a contrastar información en diferentes sitios. Con ella, podrías obtener un puntaje según la cantidad de información que se extraiga de diferentes fuentes.

OpenAI GPT-3: Esta API es una de las más avanzadas en cuanto a generación de lenguaje natural se refiere. Con ella, podrías introducir diferentes textos y obtener una respuesta generada automáticamente, lo que podría ayudarte a contrastar información. También podrías entrenar modelos específicos para tareas más concretas.

Factual: Esta API ofrece datos precisos y actualizados sobre lugares, empresas, productos y personas. Con ella, podrías obtener información específica sobre diferentes entidades y contrastarla con otras fuentes.

Info util sobre APIs tentativas:

Google Cloud Natural Language API: Ofrece una versión gratuita que permite procesar hasta 5,000 unidades de texto al mes, con algunas limitaciones en cuanto a la cantidad de solicitudes y el tipo de análisis que se puede realizar. Sin embargo, después de la prueba gratuita, se aplican tarifas según el uso.

IBM Watson Natural Language Understanding: Ofrece una versión gratuita con limitaciones, que incluye hasta 5,000 unidades de análisis por mes y un máximo de 30,000 palabras. También hay algunas limitaciones en cuanto al tipo de análisis que se puede realizar. Después de la prueba gratuita, se aplican tarifas según el uso.

OpenAI GPT-3: No ofrece una versión gratuita, pero sí un programa beta para desarrolladores que les permite probar la API de forma limitada.

Diffbot: Ofrece una versión gratuita con algunas limitaciones, que incluye 10,000 solicitudes de extracción de datos por mes. Después de la prueba gratuita, se aplican tarifas según el uso.

Factual: Ofrece una versión gratuita que permite hasta 500 solicitudes de datos al mes, con algunas limitaciones en cuanto al tipo de datos que se pueden acceder. Después de la prueba gratuita, se aplican tarifas según el uso.

API Paypal tiene un plan gratuito que te permite usarla gratis hasta los 10000 dolares mensuales.
Hay muchas apis de envio gratuitas.
Wikipedia es una api gratuita.
Las mismas pueden ser programadas todas con Node.js

Adobe Content Server: Esta API permite a los desarrolladores integrar la entrega de libros electrónicos protegidos con DRM (Digital Rights Management) a través de la plataforma de Adobe. Adobe Content Server incluye una variedad de herramientas para la gestión de derechos de autor, la protección de contenidos y la distribución de libros electrónicos.

Google Books API: Esta API permite a los desarrolladores integrar la entrega de libros electrónicos a través de la plataforma de Google Play Books. Google Play Books es una plataforma de lectura digital que permite a los usuarios acceder a sus libros electrónicos desde cualquier dispositivo.

/********************************************************************/

EPIC SP 5 VP 21 VP/SP = 4.2
US Ver ejemplos de código n° 3
Como <Usuario> 
Quiero <poder buscar ejemplos de código que tenga el tema que estoy aprendiendo>
Para <visualizarlos para usarlos de ejemplo y aprender mejor>

Requisistos de US VER EJEMPLOS DE CODIGO n° 3:

Requisitos funcionales:
RF 01 : Que el usuario visualice una interfaz donde se pueda ver el o los codigos de ejemplo que busca.
RF 02 : Que el usuario pueda buscar codigo por lenguaje.

Requisitos no funcionales:
RNF 01 : Integrar la API de GitHub que te permite buscar codigo especifico 
RNF 02 : Hacer el BackEnd para integrar la API
RNF 04 : Utilizar Tockens de acceso ya que son más seguros que las coockies, para persistir los datos que ingrese el usuario de que tipo de codigo quiere buscar. Así no se usa DB y se quita complejidad.
RNF 05 : Hacer una interfaz.
RNF 06 : Integrar una API de busqueda de fragmentos de libros.

/********************************************************************/

De la US 3 se infiere que se necesita:
Access tockens
Lenguaje para FrontEnd sensillo: vue.js con Markdown y Highlight.js porque son sensillos y ligeros. Lenguaje para BackEnd se puede usar Node.js
API de GitHub para buscar fragmentos de codigo en la web
API de google Books que es gratuita hasta ciertas solicitudes por día para buscar fragmentos de codigo en libros.
Base de datos
FrontEnd y BackEnd

/********************************************************************/

Tasks of US 3
0. Realizar maqueta de la interfaz.
1. Realizar interfaz para visualizar codigo de ejemplo y boton de busqueda.
 1.1 Botón de busqueda
 1.2 Zona donde estaran los ejemplos. Donde haciendo click en uno muestre el codigo.
 1.3 Zona donde se mostrará el ejemplo elegido.
 1.4 Botón salir del codigo para elegir otro
 1.5 Navegación entre ejemplos con flechas.
2. Realizar boton de busqueda.
3. Integrar API de github.
 3.1 Elegir api de github adecuada a lo que se necesita.
 3.2 Obtener acces token
 3.3 Integrar API
 3.4 Realizar pruebas de caja negra a la api
 3.5 Realizar pruebas de caja blanca al codigo
 3.6 Realizar prueba de integración
4. Integrar API de busqueda de fragmentos de libros.
 4.1 Elegir API de busqueda adecuada al caso.
 4.2 Obtener acces token
 4.3 Integrar API
 4.4 Realizar pruebas de caja negra a la api
 4.5 Realizar pruebas de caja blanca al codigo
 4.6 Realizar prueba de integración
5. Realizar backEnd para la API de GitHub
6. Integrar el backEnd con el FrontEnd
7. Realizar capa de logica donde se hara manejo del botón.
8. Realizar capa de logica donde se hara manejo de la API de GitHub integrandola con la interfaz.
9. Realizar capa de logica donde se hará manejo de la API de busqueda de fragmentos de texto en el libro.
10. Realizar backEnd para la API de busqueda de fragmentos de código.
11. Realizar pruebas pertinentes de integración.
12. Realizar pruebas pertinentes de end2end.
13. Diseñar un plan de pruebas.
14. Realizar plan BDD.
15. Realizar plan de TDD


/********************************************************************/

A razón de entre 5 y 10 dolares la hora del programador junior. Entre 20 y 60 dolares la hora del programador senior. Se estima que estas 3 US tomarán 90 horas de un programador junior + 10 horas de un programador senior para supervisión. Duración 3 semanas. Se le suma 1 semana por complicaciones inesperadas.
Se estima un costo de 450 dolares para el junior.
Entre 200 Y 600 dolares para el senior.
Creo que hay una falla de +- 1 semana en la estimación. Y +-20 horas entre los dos programadores. Debería ver cuanto tardo por task y us. Hay que tomar en cuenta que no tomé en cuenta el tiempo de investigacion y estudio. Si de pruebas.


	
















