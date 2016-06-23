/*:
## Intro to Classes
*/
//: ### Note Struct
struct Note {
    // ... needs volume, tone, duration, etc.
}

//: ### Instrument protocol
protocol Instrument {
    func playNote(note: Note)
}

//: ### Musician class
class Musician {
    
    var instrument: Instrument
    
    init(instrument: Instrument) {
        self.instrument = instrument
    }
    
    func perform(notes: [Note]) {
        for note in notes {
            // Our musician plays the notes exactly "as written."
            // But other musician implementations could manipulate
            // the note, by using vibrato, adding a swing feel, etc.
            instrument.playNote(note)
        }
    }
}

//: [Next](@next)
