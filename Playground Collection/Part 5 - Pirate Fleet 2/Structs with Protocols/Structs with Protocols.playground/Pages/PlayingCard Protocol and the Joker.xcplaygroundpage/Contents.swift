//: [Previous](@previous)
/*:
## PlayingCard Protocol and the Joker
*/
//: ### PlayingCard Protocol
/*: 
This protocol describes what are the necessary traits for something to be considered a `PlayingCard`. For example, to be considered a `PlayingCard` you must have the following properties:

- a `Bool` variable called `isFaceDown`
- a computed `String` variable property called `shortName`.
*/
protocol PlayingCard {
    var isFaceDown: Bool { get set }
    var shortName: String { get }
}

//: ### A Joker is-a PlayingCard
struct Joker: PlayingCard {
    
    enum Color {
        case red
        case black
    }
    
    let color: Color
    
    // for a Joker to be considered a PlayingCard it must provide these properties!
    var isFaceDown: Bool
    var shortName: String {
        if isFaceDown {
            return "???"
        }
        
        switch color {
        case .red:
            return "R 🃏"
        case .black:
            return "B 🃏"
        }
    }
}

var redJoker = Joker(color: .red, isFaceDown: false)
redJoker.shortName
redJoker.isFaceDown = true
redJoker.shortName

//: [Next](@next)
