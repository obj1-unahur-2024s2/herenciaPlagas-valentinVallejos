

class Pulgas{
    var poblacion = null

    method poblacion() = poblacion

    method ataque() = poblacion*2

    method transmiteEnfermedades() = poblacion >= 10 

    method aumentoDepobalcion() = 0.1

    method atacarElementos(unElemento) {
        unElemento.sufirAtaque(self)
        poblacion += poblacion * self.aumentoDepobalcion()
        }
}

class Garrapatas inherits Pulgas {
   override method aumentoDepobalcion() = 0.2
}

class Cucarachas inherits Pulgas{
    var pesoPromedio = null

    method pesoPromedio() = pesoPromedio

    override method ataque() = poblacion /2

    override method transmiteEnfermedades() = super() && (pesoPromedio >= 10)

    override method atacarElementos(unElemento) {
        super(unElemento)

        pesoPromedio += 2
    }
}

class Mosquitos inherits Pulgas {
  
    override method ataque() = poblacion

    override method transmiteEnfermedades() =  super() && (poblacion % 3 == 0)

}