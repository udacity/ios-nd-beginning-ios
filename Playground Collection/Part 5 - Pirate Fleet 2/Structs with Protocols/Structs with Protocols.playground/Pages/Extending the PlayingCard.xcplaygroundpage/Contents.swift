//: [Previous](@previous)
/*:
## Extending the PlayingCard Protocol
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

//: ### GoldPlatedPlayingCard Protocol
/*:
This protocol describes what are the necessary traits for something to be considered a `GoldPlatedPlayingCard`. This includes all the traits of the `PlayingCard` protocol plus an additional property:

- a `Int` variable called `karats`
*/
protocol GoldPlatedPlayingCard: PlayingCard {
    var karats: Int {get}
}

//: ### A PreciousCard is-a GoldPlatedPlayingCard
struct PreciousCard: GoldPlatedPlayingCard {
    
    // for the PreciousCard to be considered a GoldPlatedPlayingCard it must provide the karats property!
    let karats: Int
    
    // AND... the properties for the PlayingCard protocol
    var isFaceDown: Bool
    var shortName: String {
        if isFaceDown {
            return "???"
        }
        
        switch suit {
        case .RoseGold:
            return "A gold-plated 🌹"
        case .SpaceGrey:
            return "A gold-plated 🚀"
        case .Champagne:
            return "A gold-plated 🍷"
        case .Diamond:
            return "A gold-plated 💍"
        }
    }
    
    enum Suit {
        case RoseGold
        case SpaceGrey
        case Champagne
        case Diamond
    }
    
    let suit: Suit
}

let myPrecious = PreciousCard(karats: 24, isFaceDown: false, suit: .RoseGold)

//: [Next](@next)
