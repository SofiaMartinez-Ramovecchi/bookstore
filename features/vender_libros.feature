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
    Cuando se busca el libro "<Clean Code>"
    Entonces se le notifica al cliente que no tenemos el libro
    Y no se produce la venta

  Escenario: No se pudo procesar el pago
    Dado que llega un cliente a comprar "<Clean Code>"
    Y el libro existe en el stock
    Cuando el cliente quiere pagar
    pero no puede pagar
    Entonces no se produce la venta

  Escenario: El cliente pago un libro pero justo se agoto en stock
    Dado que llega un cliente a comprar "<Clean Code>"
    Y el libro existe en ese momento en el stock
    Cuando ya pagó
    Y se agotó antes el stock de "<Clean Code>"
    Entonces no se entrega el libro
    Y se debe hacer un acuerdo con el vendedor

  Escenario: Vender un libro en malas condiciones
    Dado que llega un cliente a comprar "<Clean Code>"
    Y el libro existe en stock
    Cuando el cliente lo paga
    Pero justo se entrega "<Clean Code>" en malas condiciones
    Entonces el cliente se marcha con "<Clean Code>" en malas condiciones
    Y hay que entregarle otra copia de "<Clean Code>" sano

  Escenario: Vender un libro pero que no le llegue al cliente
    Dado que llega un cliente a comprar "<Clean Code>"
    Y el libro existe en stock
    Y el cliente lo paga
    Cuando se está entregando "<Clean Code>" pasa algo no deseado
    Entonces al cliente no resive "<Clean Code>"
    Y hay que entregarle otra copia de "<Clean Code>"
