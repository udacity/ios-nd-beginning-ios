//: [Previous](@previous)
/*:
## Guitarists and Broken Strings
*/
import Foundation

//: ### Note struct
struct Note {
    let velocity: Float
}

//: ### Instrument protocol (playNote can now throw errors)
protocol Instrument {
    func playNote(note: Note) throws
}

//: ### The GuitarString struct (not to be confused with the built-in type String)
struct GuitarString {
    
    var broken: Bool = false
    var outOfTune: Bool = false
    
    enum GuitarError: Error {
        case broken
        case outOfTune
    }
    
    mutating func pluck(velocity: Float) throws -> String {
        if broken {
            // can't play a broken string
            throw GuitarString.GuitarError.broken
        }
        
        if outOfTune {
            // you can still play an out of tune string, this is just to illustrate another error type
            throw GuitarString.GuitarError.outOfTune
        }
        
        // We're playing the string really hard.
        if velocity > 0.8 {
            if arc4random() % 10 == 0 {
                // We knocked the string out of tune. The next time we play, it will sound bad.
                outOfTune = true
            }
            
            if arc4random() % 100 == 0 {
                // We broke the string! This sounds bad when it happens, so throw an error right away.
                broken = true
                throw GuitarString.GuitarError.broken
            }
        }
        
        return "twang 🎶"
    }
}

//: ### Fret struct
struct Fret {}

//: ### Guitar class
class Guitar {
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
    
    func playNote(note: Note) throws {
        var string = stringForNote(note: note)
        fretNote(note: note, onString: string)
        try pluckString(string: &string, velocity: note.velocity)
    }
    
    func pluckString(string: inout GuitarString, velocity: Float) throws {
        // Pluck the note (typically the right hand).
        try string.pluck(velocity: velocity)
    }
}

class Guitarist {
    let guitar:Guitar = Guitar(frets: [Fret()], strings: [GuitarString()])
    
    func perform(notes: [Note]) {
        for note in notes {
            do {
                try guitar.playNote(note: note)
            } catch GuitarString.GuitarError.broken {
                // quick, replace the string!
            } catch GuitarString.GuitarError.outOfTune {
                // tune that string...
            } catch {
                // something else went wrong...time to crowd surf
            }
        }
    }
}

//: [Next](@next)
