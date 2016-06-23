/*:
## Deck of Cards Example and Exercises
*/
protocol PlayingCard {
    var isFaceDown:Bool { get set }
    var shortName:String { get }
}
//: ### Implement Equatable on Joker
/*:
Build a real implementation of == which compares the two `Joker` instead of just returning true. If one or both are face down, return false.
*/
struct Joker: PlayingCard, Equatable {
    enum Color {
        case Red
        case Black
    }
    let color:Color
    var isFaceDown:Bool
    var shortName:String {
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

func ==(lhs:Joker, rhs:Joker) -> Bool {
    if lhs.isFaceDown && rhs.isFaceDown {
        return false
    }
    
    return lhs.isFaceDown == rhs.isFaceDown && lhs.color == rhs.color
}

//: ### Implement Comparable on SuitedCard
/*:
Implement Comparable on SuitedCard using Blackjack rules. The Ace can be worth 1 or 11 points, but for this exercise, treat it as always greater than any card that is not an Ace. Ignore isFaceDown for this exercise.
*/
struct SuitedCard: PlayingCard, Comparable {
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
    
    let suit:Suit
    let value:Value
    var isFaceDown:Bool
    
    var suitDisplay:String {
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
    
    var valueDisplay:String {
        switch self.value {
        case .Two:
            return "2"
        case .Three:
            return "3"
        case .Four:
            return "4"
        case .Five:
            return "5"
        case .Six:
            return "6"
        case .Seven:
            return "7"
        case .Eight:
            return "8"
        case .Nine:
            return "9"
        case .Ten:
            return "10"
        case .Jack:
            return "J"
        case .Queen:
            return "Q"
        case .King:
            return "K"
        case .Ace:
            return "A"
        }
    }
    
    var shortName:String {
        if isFaceDown {
            return "???"
        }
        
        if valueDisplay.characters.count == 1 {
            // Add a space so the width is always three.
            return "\(suitDisplay) \(valueDisplay)"
        }
        
        return "\(suitDisplay)\(valueDisplay)"
    }
}

func ==(lhs: SuitedCard, rhs: SuitedCard) -> Bool {
    switch lhs.value {
    case .Ten, .Jack, .Queen, .King:
        switch rhs.value {
        case .Ten, .Jack, .Queen, .King:
            return true
        default:
            break
        }
    default:
        break
    }
    return lhs.value == rhs.value
}

func <(lhs: SuitedCard, rhs: SuitedCard) -> Bool {
    
    var lhsValue = 0
    var rhsValue = 0
    
    switch lhs.value {
    case .Two:
        lhsValue = 2
    case .Three:
        lhsValue = 3
    case .Four:
        lhsValue = 4
    case .Five:
        lhsValue = 5
    case .Six:
        lhsValue = 6
    case .Seven:
        lhsValue = 7
    case .Eight:
        lhsValue = 8
    case .Nine:
        lhsValue = 9
    case .Ten:
        lhsValue = 10
    case .Jack:
        lhsValue = 10
    case .Queen:
        lhsValue = 10
    case .King:
        lhsValue = 10
    case .Ace:
        lhsValue = 11
    }
    
    switch rhs.value {
    case .Two:
        rhsValue = 2
    case .Three:
        rhsValue = 3
    case .Four:
        rhsValue = 4
    case .Five:
        rhsValue = 5
    case .Six:
        rhsValue = 6
    case .Seven:
        rhsValue = 7
    case .Eight:
        rhsValue = 8
    case .Nine:
        rhsValue = 9
    case .Ten:
        rhsValue = 10
    case .Jack:
        rhsValue = 10
    case .Queen:
        rhsValue = 10
    case .King:
        rhsValue = 10
    case .Ace:
        rhsValue = 11
    }
    
    return lhsValue < rhsValue
}

//: ### Implement shuffle()
/*:
Implement shuffle() using this algorithm: https://en.wikipedia.org/wiki/Fisher–Yates_shuffle (https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle)

Hint: arc4random() % 54 returns a random number between 0 and 53, inclusive.
*/
import Foundation

struct Deck {
    var cards:[PlayingCard] = []
    
    mutating func shuffle() {
        for i in 0..<cards.count {
            let swapIndex = (Int(arc4random()) % cards.count - i) + i
            let temp = cards[swapIndex]
            cards[swapIndex] =  cards[i]
            cards[i] = temp
        }
    }
    
    mutating func deal() -> (PlayingCard, PlayingCard) {
        if let card = cards.popLast(),
            var faceUp = cards.popLast() {
            faceUp.isFaceDown = false
            return (card, faceUp)
        }
        fatalError("out of cards")
    }
}

var deckOfHearts = Deck()
deckOfHearts.cards = [
    SuitedCard(suit: .Hearts, value: .Two, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Three, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Four, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Five, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Six, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Seven, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Eight, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Nine, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Ten, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Jack, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Queen, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .King, isFaceDown: false),
    SuitedCard(suit: .Hearts, value: .Ace, isFaceDown: false),
]

deckOfHearts.shuffle()
let twoCards = deckOfHearts.deal()

print(twoCards.0.shortName, twoCards.1.shortName)
