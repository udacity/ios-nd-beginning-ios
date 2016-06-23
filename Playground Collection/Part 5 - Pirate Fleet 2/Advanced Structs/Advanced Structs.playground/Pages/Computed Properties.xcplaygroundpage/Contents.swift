//: [Previous](@previous)

import Foundation

/*:
## Computed Property, Method, and Custom Initializer
*/
//: ### SuitedCard Struct
struct SuitedCard {
    
    enum Suit {
        case Hearts
        case Spades
        case Diamonds
        case Clubs
    }
    
    enum Value {
        case Two
        case Three
        case Four
        case Five
        case Six
        case Seven
        case Eight
        case Nine
        case Ten
        case Jack
        case Queen
        case King
        case Ace
    }
    
    let suit: Suit
    let value: Value
    
    // The suitDisplay is a value that can be derived from information already in the struct (the suit)
    var suitDisplay: String {
        switch self.suit {
        case .Hearts:
            return "♥"
        case .Spades:
            return "♠"
        case .Diamonds:
            return "♦"
        case .Clubs:
            return "♣"
        }
    }
}

//: Example use of `SuitedCard`'s computed property `suitDisplay`.
let s = SuitedCard(suit: .Hearts, value: .Ace)
s.suitDisplay

//: [Next](@next)
