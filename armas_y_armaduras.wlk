class ArmaDeFilo {
  var longitud
  var filo
  
  method valorDeAtaque() = longitud * filo
}
class ArmaContundente {
  var peso
  method valorDeAtaque() = peso
}

class Cascos {
  method puntosDeProteccion(gladiador) = 10 
}

class Escudos {
  method puntosDeProteccion(gladiador) = 5 * (gladiador.destreza() * 0.1)
}