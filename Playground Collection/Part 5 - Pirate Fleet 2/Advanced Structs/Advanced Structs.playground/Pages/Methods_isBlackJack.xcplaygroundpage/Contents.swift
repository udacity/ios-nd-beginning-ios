//: [Previous](@previous)

import Foundation

/*:
## Methods
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
    
    // isBlackjack is a method belonging to SuitedCard that allows us to check if a SuitedCard plus another card (otherCard) produces the conditions necessary for "Blackjack"
    func isBlackjack(otherCard: SuitedCard) -> Bool {
        switch value {
        case .king, .queen, .jack, .ten:
            return otherCard.value == .ace
        default:
            break
        }
        
        switch otherCard.value {
        case .king, .queen, .jack, .ten:
            return value == .ace
        default:
            break
        }
        
        return false
    }
}

//: Example use of `SuitedCard`'s computed property `suitDisplay`.
let s = SuitedCard(suit: .hearts, value: .ace)
s.suitDisplay

//: Example use of `SuitedCard`'s `isBlackjack` method.
let t = SuitedCard(suit: .spades, value: .ten)
let u = SuitedCard(suit: .spades, value: .ten)
s.isBlackjack(otherCard: t)

//: [Next](@next)
