//: [Previous](@previous)
/*:
## Equatable Example
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

//: ### A Joker is-a PlayingCard and it is Equatable
struct Joker: PlayingCard, Equatable {
    
    enum Color {
        case Red
        case Black
    }
    
    let color: Color
    
    // for a Joker to be considered a PlayingCard it must provide these properties!
    var isFaceDown: Bool
    var shortName: String {
        if isFaceDown {
            return "???"
        }
        
        switch color {
        case .Red:
            return "R 🃏"
        case .Black:
            return "B 🃏"
        }
    }
}

//: For a Joker to be Equatable, we must define equality between Jokers.
func ==(lhs: Joker, rhs: Joker) -> Bool {
    return true
}

var redJoker = Joker(color: .Red, isFaceDown: false)
var blackJoker = Joker(color: .Black, isFaceDown: false)

blackJoker == redJoker
blackJoker != redJoker

//: [Next](@next)
