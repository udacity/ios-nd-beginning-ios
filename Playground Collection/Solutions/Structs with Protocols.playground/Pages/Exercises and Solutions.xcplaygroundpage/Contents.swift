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
        case red
        case black
    }
    let color:Color
    var isFaceDown:Bool
    var shortName:String {
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
    
    let suit:Suit
    let value:Value
    var isFaceDown:Bool
    
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
    
    var valueDisplay: String {
        switch self.value {
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .ten:
            return "10"
        case .jack:
            return "J"
        case .queen:
            return "Q"
        case .king:
            return "K"
        case .ace:
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
    case .ten, .jack, .queen, .king:
        switch rhs.value {
        case .ten, .jack, .queen, .king:
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
    case .two:
        lhsValue = 2
    case .three:
        lhsValue = 3
    case .four:
        lhsValue = 4
    case .five:
        lhsValue = 5
    case .six:
        lhsValue = 6
    case .seven:
        lhsValue = 7
    case .eight:
        lhsValue = 8
    case .nine:
        lhsValue = 9
    case .ten:
        lhsValue = 10
    case .jack:
        lhsValue = 10
    case .queen:
        lhsValue = 10
    case .king:
        lhsValue = 10
    case .ace:
        lhsValue = 11
    }
    
    switch rhs.value {
    case .two:
        rhsValue = 2
    case .three:
        rhsValue = 3
    case .four:
        rhsValue = 4
    case .five:
        rhsValue = 5
    case .six:
        rhsValue = 6
    case .seven:
        rhsValue = 7
    case .eight:
        rhsValue = 8
    case .nine:
        rhsValue = 9
    case .ten:
        rhsValue = 10
    case .jack:
        rhsValue = 10
    case .queen:
        rhsValue = 10
    case .king:
        rhsValue = 10
    case .ace:
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
    SuitedCard(suit: .hearts, value: .two, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .three, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .four, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .five, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .six, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .seven, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .eight, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .nine, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .ten, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .jack, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .queen, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .king, isFaceDown: false),
    SuitedCard(suit: .hearts, value: .ace, isFaceDown: false),
]

deckOfHearts.shuffle()
let twoCards = deckOfHearts.deal()

print(twoCards.0.shortName, twoCards.1.shortName)
