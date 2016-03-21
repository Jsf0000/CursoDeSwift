//VelocimetroDigital

import UIKit

//Enum Velocidades
enum Velocidades : Int{
    case Apagado = 0,VelocidadBaja = 20,VelocidadMedia = 50,VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


// Clase Auto
class Auto {
    var velocidad : Velocidades
    var contador = 0
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad()->(actual:Int, velocidadEnCadena:String){
        if contador == 0{
            contador++
            return (velocidad.rawValue, "Apagado")
        }
        else if (contador == 1){
            velocidad = Velocidades.VelocidadBaja
            contador++
            return (velocidad.rawValue, "Velocidad Baja")
        }
        else if (contador == 2){
            velocidad = Velocidades.VelocidadMedia
            contador++
            return  (velocidad.rawValue, "Velocidad Media")
        }
        else{
            velocidad = Velocidades.VelocidadAlta
            contador = 2
            return (velocidad.rawValue, "Velocidad Alta")
        }
    }
    
}


/*
-------RECUERDE CINCO Iteraciones producen 10 resultados--------------------
- Una salida válida con CINCO iteraciones es:

 1. 0 , Apagado
 2. 20, Velocidad baja
 3. 50, Velocidad media
 4. 120, Velocidad alta
 5. 50, Velocidad media
 6. 120, Velocidad alta
 7. 50, Velocidad media
 8. 120, Velocidad alta
 9. 50, Velocidad media
10. … etc.
*/

// Pruebas

var automovil = Auto()
var cadena : (actual: Int, velocidad:String)
var contador = 0

for i in (1...20){
    cadena = (Int,String)(automovil.cambioDeVelocidad())
    print("\(++contador). \(cadena.actual), \(cadena.velocidad)")
    cadena = (Int,String)(automovil.cambioDeVelocidad())
    print("\(++contador). \(cadena.actual), \(cadena.velocidad)")
    
}






