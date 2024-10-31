import armas_y_armaduras.*

class Mirmillones{
  var vida = 100
  var arma
  var armadura
  var fuerza 

  method destreza() = 15
  method vida() = vida
  method fuerza() = fuerza

  method cambiarArmadura(nuevaArmadura) {armadura = nuevaArmadura}
  method cambiarArma(nuevaArma) {arma = nuevaArma}

  method poderDeAtaque() = arma.valorDeAtaque() + fuerza 
  method defenza() = armadura.puntosDeProteccion(self) + self.destreza()

  method atacarA(atacado) {
    self.atacar(atacado)
    atacado.atacar(self)
  }

  method atacar(alguien) {alguien.recibirAtaque(self.poderDeAtaque())}
  method recibirAtaque(danio) {vida -= 0.max(danio - self.defenza())}
}

class Dimachaerus {
  var vida = 100
  const property armas = []
  var fuerza = 10
  var destreza

  method agregarArma(arma) {armas.add(arma)}
  method vida() = vida
  method fuerza() = fuerza

  method defenza() = destreza / 2
  method poderDeAtaque() = fuerza + armas.sum({a => a.valorDeAtaque()})

  method atacar(alguien) {alguien.recibirAtaque(self.poderDeAtaque())}
  method recibirAtaque(danio) {vida -= 0.max(danio - self.defenza())}

  method atacarA(atacado) {
    self.atacar(atacado)
    atacado.atacar(self)
  }
}

class Grupos{
    
}