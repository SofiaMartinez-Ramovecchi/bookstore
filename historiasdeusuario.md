Historias de usuario:

 Glosario:
    Cliente: Vendedor. Dueño del bookstore, que vende a sus clientes estudiantes de programación.
    Usuario: El que usa la app
    Libros:libros de programación en formato fisico y virtual
    Formato virtual: Puede ser en .pdf, .epub, .md YAML Front Matter u otro formato. (Discutir con el cliente los formatos.)
    API de envios: OCA, ANDREANI (nacionales). EASYPOSRT, SHIPPO (internacional).
    Datos relevantes para la venta: Dirección, nro tarjeta, nro de dni, mail.
    Usuario: estudiante de algun lenguaje de programación
    Informacion necesaria del autor: Carrera profecional (libros, proyectos, etc, repositorios virtuales como por ejemplo GitHub)

EPIC SP 8 VP 8 SP/VP = 1
US VENDER LIBROS  n° 1
Como <vendedor>
Quiero <vender libros en formato fisico y virtual>
Para <aumentar ventas, actualizarse y dar valor agregado>

Requisitos funcionales:
RF01: Necesito un visualizador de libros en formato digital.
RF02: Necesito una forma de limitar quienes pueden acceder a los libros.
RF03: Necesito una forma de enviar libros en formato fisico
RF04: Necesito una forma de enviar libros virtualmente.

Requisitos no funcionales:
RNF01: Visualizador pdf, epub y mobi.
RNF02: Mediente una cuenta de usuario, zkp, zsnark o mediente token.
RNF03: Se pueden usar apis de stripe o mercado pago
RNF04: Puedo hacerlo vía mail o con acces token via sms, tambien puede ser simplemente verificando si es quien dice ser.

/*******************************
Suposiciones:
Se podría integrar python para usar las librerías  "libgen_api" y "libgen-wrapper" en caso de querer automatizar la busqueda y descarga de libros. Esto sirve tanto para esta US como la n°2.
https://www.npmjs.com/package/@vulpemventures/secp256k1-zkp librería de C! LA UNICA QUE ENCONTRÉ, Y OTRA DE GO QUE NO PUSE, para integrar zkp
https://www.mercadopago.com.ar/developers/es/docs/sdks-library/landing liblioteca para integrar MP de javascript
https://www.npmjs.com/package/jsonwebtoken biblioteca para acces token
********************************/

EPIC SP 3 VP 8 SP/VP = 0.27
US Visualizar libros por escala de confiabilidad n° 2
Como <vendedor>
Quiero <que los usuarios puedan acceder a libros sobre un tema en particular de quien invento tal tecnología>
Para <ofrecer fuentes certeras de información y así dar un valor agregado a la app>

Requisitos funcionales:
RF 01 : Necesito saber para x topico quien es el autor de tal tema.
RF 02 : Necesito poder acceder a los libros de ese autor.

Requisitos no funcionales:
RNF 01: Puedo hacerlo buscando en la wikipedia. (por medio de la api).
RNF 02: Puedo hacerlo buscando en lugares como libgen.li

/******************************
Suposisiones: 
Framework: nest.js (si no necesitas algo no lo instalas, no consume mucha memoria)
Para integrar wikipedia se puede usar la librería wikipedia de JavaScript que sirve para typescript.  https://www.npmjs.com/package/wikipedia
*******************************/

EPIC SP 2 VP 3 SP/VP = 0.67
US Ver ejemplos de código n° 3
Como <Usuario> 
Quiero <poder buscar ejemplos de código que tenga el tema que estoy aprendiendo>
Para <visualizarlos, usarlos de ejemplo y aprender mejor>

Requisitos funcionales:
RF 01 : Necesito poder buscar fragmentos de codigo que quiera el usuario.

Requisitos no funcionales:
RNF 01 : Puede ser usando la API de GitHub

/***************************
Suposisiones: 
Biblioteca Octokit: biblioteca oficial de github para typescript. Funcion search.code https://github.com/microsoft/typed-rest-client/tree/master/docs
****************************/

Estimaciones de tiempo y costo:
Esto me puede tardar al rededor de 6 y 12 meses. Serían entre 600 y 1200 horas de trabajo.
El costo es de 25 dolares la hora. Son entre 15000 y 30000 dolares.