//: [Previous](@previous)
/*:
## Cake Example
*/
//: ### Cake Struct
struct Cake {
}

//: ### CakeHaver protocol
protocol CakeHaver {
    var cake: Cake? { get set }
}

//: ### CakeHaverClass is-a CakeHaver
class CakeHaverClass: CakeHaver {
    var cake: Cake? = Cake()
}

//: ### CakeHaverStruct is-a CakeHaver
struct CakeHaverStruct: CakeHaver {
    var cake: Cake? = Cake()
}

func eatCake(cakeHaver: CakeHaver) {
    var cakeHaverCopy = cakeHaver
    cakeHaverCopy.cake = nil
}

func cakeStatus(cakeHaver: CakeHaver) {
    if let _ = cakeHaver.cake {
        print("Cake is still had")
    } else {
        print("No more cake")
    }
}

// Because this call to the eatCake func operators on a CakeHaverStruct (value type) it modifies a copy.
var valueType = CakeHaverStruct()
eatCake(valueType)
cakeStatus(valueType) // Prints "Cake is still had"

// But in this example eatCake is called on a CakeHaverClass (reference type) and it directly modifies the object.
var referenceType = CakeHaverClass()
eatCake(referenceType)
cakeStatus(referenceType) // Prints "No more cake"

//: [Next](@next)

