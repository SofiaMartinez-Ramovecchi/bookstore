#language: es

Característica: Visualizar libros por escala de confiabilidad
	como vendedor, quiero que los usuarios puedan acceder a libros sobre un tema en particular de quien invento tal tecnología, para ofrecer fuentes certeras de información y así dar un valor agregado a la app

  Escenario: Visualizar exitosamente quien es el autor de tal tema y acceder a esos libros
	Dado que llega un "<usuario>" a visualizar un libro confiable de "<Principios SOLID>"	
	Cuando el cliente busca un libro confiable de "<Principios SOLID>"
	Y visualiza libros del "<autor Robert C Martin>" sobre el tema "<Principios SOLID>"
	Entonces el "<usuario>" accede al libro "<Agile Principles, Patterns, and Practices in C#>" correctamente

  Escenario: No se puede acceder al libro del autor
	Dado que llega un "<usuario>" a visualizar un libro confiable de "<Principios SOLID>"	
	Cuando el cliente busca un libro confiable de "<Principios SOLID>"
	Y visualiza libros del "<autor Robert C Martin>" sobre el tema "<Principios SOLID>"
	Pero no se puede acceder al libro "<Agile Principles, Patterns, and Practices in C#>"
	Entonces el "<usuario>" no puede visualizar el libro "<Agile Principles, Patterns, and Practices in C#>" 

  Escenario: El autor no tiene libros sobre el tema
	Dado que llega un "<usuario>" a visualizar un libro confiable de "<Principios SOLID>"	
	Cuando el cliente busca un libro confiable de "<Principios SOLID>"
	Pero no hay libros sobre el tema "<Principios SOLID>" del del tema "<autor Robert C Martin>"
	Entonces el "<usuario>" no puede visualizar ningun libro
