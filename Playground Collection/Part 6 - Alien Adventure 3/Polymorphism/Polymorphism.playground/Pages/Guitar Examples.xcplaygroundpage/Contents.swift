/*:
## Guitar Examples
*/
//: ### GuitarString struct
struct GuitarString {}

//: ### A Guitar is-an Instrument
class Guitar {
    func pluckString(string: GuitarString) {
        // Pluck the note (typically the right hand).
        print("twang 🎶")
    }
}

//: ### An ElectricGuitar is-a Guitar and it inherits all its properties/methods.
class ElectricGuitar: Guitar {
    // The electric guitar has adjustable knobs.
    var volumeLevel: Float = 1.0
    
    // Notice the override keyword.
    override func pluckString(string: GuitarString) {
        if volumeLevel > 0.7 {
            print("🎸🎸🎸 DRAOWWW")
        } else if volumeLevel > 0 {
            print("🎸 twang")
        } else { // volumeLevel is 0
            super.pluckString(string)
        }
    }
}

//: ### A FlyingV is-a ElectricGuitar and it inherits all its properties/methods.
class FlyingV: ElectricGuitar {
    func shred() {
        let string = GuitarString()
        pluckString(string)
        pluckString(string)
        pluckString(string)
        pluckString(string)
    }
}

var guitar:Guitar = Guitar()
guitar.pluckString(GuitarString())

// Time to shred!!
guitar = FlyingV()
guitar.pluckString(GuitarString())

//: [Next](@next)
