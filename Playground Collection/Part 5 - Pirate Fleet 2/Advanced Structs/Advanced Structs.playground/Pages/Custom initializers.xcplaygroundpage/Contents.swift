//: [Previous](@previous)

import Foundation

/*:
## Custom Initializers
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
    let isFaceDown:Bool
    
    // custom initializer taking a two parameters: a Suit and a Value
    init(suit: Suit, value: Value) {
        self.suit = suit
        self.value = value
        self.isFaceDown = false
    }
    
    // custom initializer taking a three parameters: a Suit, a Value, and a Bool
    init(suit: Suit, value: Value, isFaceDown: Bool) {
        self.suit = suit
        self.value = value
        self.isFaceDown = isFaceDown
    }
    
    // the suitDisplay is a value that can be derived from information already in the struct (the suit)
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
let u = SuitedCard(suit: .spades, value: .ten, isFaceDown:true)
s.isBlackjack(otherCard: t)

//: Example use of `SuitedCard`'s custom initializers.
let ten = SuitedCard(suit: .spades, value: .ten)
ten.isFaceDown
let upsideDown = SuitedCard(suit: .spades, value: .ten, isFaceDown: true)
upsideDown.isFaceDown

//: [Next](@next)

