//: # All about Optionals!
import UIKit
//: ### Example 1: Nil is disallowed in most Swift types

// Ints can't store nil values
var x: Int
//x = nil

// Object references can't store nil values either
var c: AnyObject
c = UIColor.red
//c = nil

//: ### Cool! Except, sometimes we need nil values.
//: 1. A method that cannot return a value
var y: Int
var s1: String
var s2: String

s1 = "123"
s2 = "ABC"

//y = Int(s1)
//y = Int(s2)

//: 2. Properties that cannot be initialized when an object is constructed
class ViewController: UIViewController {
    //var button: UIButton
}

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
pickUpGroceries(car: someCar)

pickUpGroceries(car: nil)

// Example: Hosting a guest in an optional extra room
func host(guest: String, extraRoom: Room?) {
    if let extraRoom = extraRoom {
        print("Come stay with us, \(guest), you can sleep in the \(extraRoom.name).")
    } else {
        print("Come stay with us, \(guest), you can sleep on the couch.")
    }
}

var someRoom = Room(name: "guest room", occupied: false)
host(guest: "Grandma", extraRoom: someRoom)
host(guest: "Ryan", extraRoom: nil)
