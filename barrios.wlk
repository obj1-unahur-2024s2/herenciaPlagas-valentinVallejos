import elementos.*


class Barrio {
  const elementos = []

  method agragarElementos(unElemento) {elementos.add(unElemento)}

  method cantDeElementosBuenos() = elementos.count({x=>x.esBueno()})

  method cantDeElementosMalos() = elementos.count({x=> not x.esBueno()})

  method esCopado() = self.cantDeElementosBuenos() > self.cantDeElementosMalos()


}