import plagas.*

class Hogar{
    const confort = null
    var mugre = null

    method mugre() = mugre

    method esBueno() = confort/2 >= mugre

    method sufirAtaque(unaPlaga) {mugre += unaPlaga.ataque() }
}

class Huertas{
    var produccionPorMes = null
    const nivel = null

    method produccionPorMes() = produccionPorMes

    method esBueno() = produccionPorMes > nivel

    method sufirAtaque(unaPlaga) {produccionPorMes = (produccionPorMes-unaPlaga.ataque() - if (unaPlaga.transmiteEnfermedades()) 10 else 0).max(0) }
}

class Mascota {
    var salud = null

    method salud() = salud

    method esBueno() = salud > 250

    method sufrirAtaque(unaPlaga) {salud = (salud - if (unaPlaga.transmiteEnfermedades()) unaPlaga.ataque() else 0).max(0) }

}