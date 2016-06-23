//: [Previous](@previous)

import Foundation

//: ### Optionals can be passed as parameters to functions

// Example: Picking up groceries in an optional car
func pickUpGroceries(car:Car?) {
    if let car = car {
        print("We'll pick up the groceries in the \(car.model)")
    } else {
        print("Let's walk to the store")
    }
}

var someCar = Car(make: "Toyota", model: "Corolla")
pickUpGroceries(someCar)

pickUpGroceries(nil)

// Example: Hosting a guest in an optional extra room
func host(guest: String, extraRoom: Room?) {
    if let extraRoom = extraRoom {
        print("Come stay with us, \(guest), you can sleep in the \(extraRoom.name).")
    } else {
        print("Come stay with us, \(guest), you can sleep on the couch.")
    }
}

var someRoom = Room(name: "guest room", occupied: false)
host("Grandma", extraRoom: someRoom)
host("Ryan", extraRoom: nil)

//: [Next](@next)