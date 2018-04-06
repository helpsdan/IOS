//: Playground - noun: a place where people can play

import UIKit

class Vehicle {

    // Propriedades Armazenadas
    var speed: UInt
    var model: String

    
    var currentSpeed: String {
        return "O carro \(model) está a \(speed) \(Vehicle.speedUnit)"
    }
    
    var maxSpeed: UInt{
        return 300
    }
    
    // Propriedade de CLasse
    static let speedUnit: String = "KM/h"
    
    init(speed: UInt, model: String){
        self.speed = speed
        self.model = model
    }
    
    class func alert() -> String{
        return "Se beber nao dirija"
    }
}

let vehicle = Vehicle(speed: 120, model: "fox")
print(vehicle.currentSpeed)

print("A unidade utilizada é \(Vehicle.speedUnit)")
print("Cuidado \(Vehicle.alert())")

// heranca

class Car: Vehicle{
    var licensePlate: String
    
    init(licensePlate: String, speed: UInt, model: String){
        self.licensePlate = licensePlate
        super.init(speed: speed, model: model)
    }
    
    override var maxSpeed: UInt{
        return 200
    }
    
}

