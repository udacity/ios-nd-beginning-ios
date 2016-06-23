//: [Previous](@previous)

import Foundation

/*:
## Methods
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
    
    // isBlackjack is a method belonging to SuitedCard that allows us to check if a SuitedCard plus another card (otherCard) produces the conditions necessary for "Blackjack"
    func isBlackjack(otherCard: SuitedCard) -> Bool {
        switch value {
        case .King, .Queen, .Jack, .Ten:
            return otherCard.value == .Ace
        default:
            break
        }
        
        switch otherCard.value {
        case .King, .Queen, .Jack, .Ten:
            return value == .Ace
        default:
            break
        }
        
        return false
    }
}

//: Example use of `SuitedCard`'s computed property `suitDisplay`.
let s = SuitedCard(suit: .Hearts, value: .Ace)
s.suitDisplay

//: Example use of `SuitedCard`'s `isBlackjack` method.
let t = SuitedCard(suit: .Spades, value: .Ten)
let u = SuitedCard(suit: .Spades, value: .Ten)
s.isBlackjack(t)

//: [Next](@next)
