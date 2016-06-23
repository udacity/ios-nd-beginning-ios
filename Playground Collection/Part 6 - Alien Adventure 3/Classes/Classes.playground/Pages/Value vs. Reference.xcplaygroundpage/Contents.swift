//: [Previous](@previous)
/*:
## Value vs. Reference
*/
//: ### Note struct
struct Note {
    // ... needs volume, tone, duration, etc.
}

//: ### Instrument protocol
protocol Instrument {
    func playNote(note: Note)
}

//: ### Fiddle is-an Instrument
struct Fiddle: Instrument {
    func playNote(note: Note) {}
}

//: ### Banjo is-an Instrument
struct Banjo: Instrument {
    func playNote(note: Note) {}
}

//: ### Musician class (REFERENCE TYPE)
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

//: ### MusicianStruct struct (VALUE TYPE)
struct MusicianStruct {
    
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

func prepareForDuelingBanjos(musician: Musician) {
    musician.instrument = Banjo()
    musician.instrument
}
func prepareForDuelingBanjos(musician: MusicianStruct) {
    var musicianCopy = musician
    musicianCopy.instrument = Banjo()
    musicianCopy.instrument
}

let musicianStruct = MusicianStruct(instrument: Fiddle())

// Because this call to the prepareForDuelingBanjos func operators on a MusicianStruct (value type) it modifies a copy of the musician parameter.
prepareForDuelingBanjos(musicianStruct)

// Therefore the musicianStruct's instrument does not change!
musicianStruct.instrument

// But in this example prepareForDuelingBanjos is called using a Musician (reference type) and the instrument is changed!
let duo = [Musician(instrument: Fiddle()), Musician(instrument: Banjo())]
let musician = duo[0]
prepareForDuelingBanjos(musician)
musician.instrument

//: [Next](@next)
