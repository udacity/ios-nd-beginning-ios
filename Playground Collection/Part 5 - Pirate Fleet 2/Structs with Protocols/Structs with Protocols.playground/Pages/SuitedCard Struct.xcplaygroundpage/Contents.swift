//: ## SuitedCard Struct
struct SuitedCard {
    
    // a card can be ♥️, ♣️, ♦️, ♠️
    enum Suit {
        case hearts
        case spades
        case diamonds
        case clubs
    }
    
    // the possible values of a card
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
    
    // properties
    let suit: Suit
    let value: Value
    var isFaceDown: Bool
}
//: [Next](@next)
