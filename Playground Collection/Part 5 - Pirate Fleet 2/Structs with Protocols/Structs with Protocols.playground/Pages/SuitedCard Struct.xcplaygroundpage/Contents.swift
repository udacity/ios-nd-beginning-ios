//: ## SuitedCard Struct
struct SuitedCard {
    
    // a card can be ♥️, ♣️, ♦️, ♠️
    enum Suit {
        case Hearts
        case Spades
        case Diamonds
        case Clubs
    }
    
    // the possible values of a card
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
    
    // properties
    let suit: Suit
    let value: Value
    var isFaceDown: Bool
}
//: [Next](@next)
