//: Playground - noun: a place where people can play
import UIKit

// arreglo vacio
var rango: [Int] = []

// Se llena el arreglo
for i in 0...100{
    rango.append(i)
}

//Operaciones

for i in rango {
    if i%5 == 0{
        print("Bingo!!!      \(i) " )
    }
    if i%2 == 0{
        print("par!!!        \(i) " )
    }
    if i%2 == 1{
        print("impar!!!      \(i) " )
    }
    if i  >= 30 && i <= 40{
        print("Viva Swift!!! \(i) " )
    }
}

