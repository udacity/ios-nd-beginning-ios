//: [Previous](@previous)
/*:
## Deck of Cards Example and Exercises
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

//: ### A SuitedCard is-a PlayingCard
struct SuitedCard: PlayingCard {
    
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
    
    // for a SuitedCard to be considered a PlayingCard it must provide these properties!
    var isFaceDown: Bool
    var shortName: String {
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

let suits:[SuitedCard.Suit] = [.hearts, .diamonds, .clubs, .spades]
let values:[SuitedCard.Value] = [.two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king, .ace]

struct Deck {
    var cards: [PlayingCard] = []
    
    init() {
        for suit in suits {
            for value in values {
                cards.append(SuitedCard(suit: suit, value: value, isFaceDown: true))
            }
        }
        
        cards.append(Joker(color: .red, isFaceDown: true))
        cards.append(Joker(color: .black, isFaceDown: true))
        
        shuffle()
    }
    
    func shuffle() {
        // TODO: implement shuffle
    }
}

