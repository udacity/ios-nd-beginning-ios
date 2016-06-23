/*:
## Classes and Inheritance: Guitar Examples
*/
//: ### Note Struct
struct Note {
    // ... needs volume, tone, duration, etc.
}

//: ### Instrument protocol
protocol Instrument {
    func playNote(note: Note)
}

//: ### GuitarString and Fret structs
//: `GuitarString`... not to be confused with the built-in type `String` :)
struct GuitarString {}
struct Fret {}

//: ### A Guitar is-an Instrument
class Guitar: Instrument {
    
    let frets: [Fret]
    let strings: [GuitarString]
    
    // A guitar typically has 20-24 frets and 6 strings.
    init(frets: [Fret], strings: [GuitarString]) {
        self.frets = frets
        self.strings = strings
    }
    
    func stringForNote(note: Note) -> GuitarString {
        // TODO: logic to choose the correct string to play
        return strings[0]
    }
    
    func fretNote(note: Note, onString: GuitarString) {
        // Press down the correct fret (typically left hand).
    }
    
    func pluckString(string: GuitarString) {
        // Pluck the note (typically the right hand).
        print("twang 🎶")
    }
    
    func playNote(note: Note) {
        let string = stringForNote(note)
        fretNote(note, onString: string)
        pluckString(string)
    }
}

//: ### An ElectricGuitar is-a Guitar and it inherits all its properties/methods.
class ElectricGuitar: Guitar {
    
    // The electric guitar has adjustable knobs for tone and volume.
    var volumeLevel: Float = 1.0
    var toneLevel: Float = 1.0
    
    // Notice the override keyword. This overrides the behavior of Guitar's pluckString method.
    override func pluckString(string: GuitarString) {
        if volumeLevel > 0.7 {
            print("🎸🎸🎸 DRAOWWW")
        } else if volumeLevel > 0 {
            print("🎸 twang")
        } else { // volumeLevel is 0
            super.pluckString(string)
        }
        // TODO: incorporate tone.
    }
}

// NOTE: To see the output, make sure the Debug Area is revealed (toggle with Shift+Command+Y).

let guitar = Guitar(frets: [Fret()], strings: [GuitarString()])
guitar.playNote(Note())

let electric = ElectricGuitar(frets: [Fret()], strings: [GuitarString()])
electric.playNote(Note())

var anyGuitar:Guitar = Guitar(frets: [Fret()], strings: [GuitarString()])
anyGuitar.playNote(Note())

anyGuitar = electric
anyGuitar.playNote(Note())
