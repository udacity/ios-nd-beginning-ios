//: [Previous](@previous)

//: ### Swift Arrays have types
// An array can hold any type, but all of its items must be of the same type.

struct LightSwitch {
    var on: Bool = true
}

var circuit = [LightSwitch]()

var livingRoomSwitch = LightSwitch()
var kitchenSwitch = LightSwitch()
var bathroomSwitch = LightSwitch()

circuit = [livingRoomSwitch, kitchenSwitch, bathroomSwitch]

//circuit.append("a string")



//: [Next](@next)
