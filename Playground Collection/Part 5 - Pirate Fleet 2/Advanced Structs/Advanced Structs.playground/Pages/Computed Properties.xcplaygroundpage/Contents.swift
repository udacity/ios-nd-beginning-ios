//: [Previous](@previous)

import Foundation

/*:
## Computed Property, Method, and Custom Initializer
*/
//: ### SuitedCard Struct
struct SuitedCard {
    
    enum Suit {
        case hearts
        case spades
        case diamonds
        case clubs
    }
    
    enum Value {
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case jack
        case queen
        case king
        case ace
    }
    
    let suit: Suit
    let value: Value
    
    // The suitDisplay is a value that can be derived from information already in the struct (the suit)
    var suitDisplay: String {
        switch self.suit {
        case .hearts:
            return "♥"
        case .spades:
            return "♠"
        case .diamonds:
            return "♦"
        case .clubs:
            return "♣"
        }
    }
}

//: Example use of `SuitedCard`'s computed property `suitDisplay`.
let s = SuitedCard(suit: .hearts, value: .ace)
s.suitDisplay

//: [Next](@next)
