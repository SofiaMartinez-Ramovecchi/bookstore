#language: es

Característica: vender libros
  como vendedor quiero vender libros sobre programacion
  en formato fisico y virtual, para aumentar ventas y dar valor agregado

  Escenario: Vender exitosamente un libro
    Dado que llega un cliente a comprar un libro
    Y el libro existe en stock
    Cuando el cliente lo paga
    Entonces el cliente se marcha con su nuevo libro

  Escenario: No existe ese libro en el stock
    Dado que llega un cliente a comprar "<Clean Code>"
    Y el libro no existe en stock
    Entonces se le notifica al cliente que no tenemos el libro
    Y no se produce la venta

  Escenario: No se pudo procesar el pago
    Dado que llega un cliente a comprar "<Clean Code>"
    Y el libro existe en el stock
    Pero el cliente no pudo pagar
    Entonces no se produce la venta

  Escenario: El cliente pago un libro pero justo se agoto en stock
    Dado que llega un cliente a comprar "<Clean Code>"
    Y el libro existe en ese momento en el stock
    Y el cliente pago
    Pero justo se agoto en el stock
    Entonces el sistema le deberia reintegrar el pago o enviarle mas adelante una copia del libro al cliente

