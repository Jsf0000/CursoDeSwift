//
//  main.swift
//  Juego de Memoria
//
//  Created by Jason Solano on 6/3/16.
//  Copyright © 2016 Jason Solano. All rights reserved.

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

