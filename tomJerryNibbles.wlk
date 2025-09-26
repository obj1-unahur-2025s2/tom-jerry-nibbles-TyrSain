object tom {
    var energia = 50
    
    method energia() {
        return energia
    }

    method reiniciarEstado() {
        energia = 50
    }

    method velocidadMaxima() {
        return 5 + (energia / 10)
    }

    method comerRaton(raton) {
        if (raton.peso() < 50) {
            energia += (12 + raton.peso())
        }
        else {
            energia = 0
        }
        
    }

    method correr(metros) {
        energia -= (metros / 2)
    }

    method puedeCazar(raton, distancia) {
        const energiaNecesaria = distancia / 2
        return energia > energiaNecesaria
    }

    method cazarRaton(raton, distancia) {
        if (self.puedeCazar(distancia, raton)) {
            self.correr(distancia)
            self.comerRaton(raton)
        }
    }

    method estaSatisfecho() {
        return energia == 0
    }
}

object jerry {
  var edad = 2
  
  method peso() {
    return edad * 20
  }

  method cumpleAños() {
    edad += 1
  }
  
}

object nibbles {
  method peso() {
    return 35
  }
}

// Inventar otro ratón

object mikey {
    var peso = 30
    
    method peso() {
        return peso
    }

    method comerQueso() {
        peso += 50
    }

}