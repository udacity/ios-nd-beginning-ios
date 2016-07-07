//: [Previous](@previous)
/*:
## Blackjack Player
*/
//: ### PlayingCard protocol
protocol PlayingCard {
    var isFaceDown:Bool { get set }
    var shortName:String { get }    
}

//: ### SuitedCard is-a PlayingCard
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
    var isFaceDown: Bool
    
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

//: ### Deck struct
struct Deck {
    var cards: [SuitedCard] = []
    
    init() {
        for suit in suits {
            for value in values {
                cards.append(SuitedCard(suit: suit, value: value, isFaceDown: true))
            }
        }
        shuffle()
    }
    
    func shuffle() {
        // TODO: implement shuffle
    }
}

//: ### BlackjackPlayer class
class BlackjackPlayer {
    var hand: [SuitedCard] = []
    
    func playTurn(dealer: Dealer) {
        while(!hasBusted()) {
            // TODO: decide whether to hit or stand
        }
    }
    
    func hit(dealer: Dealer) {
        dealer.hit(player: self)
    }
    
    func stand(dealer: Dealer) {
        dealer.stand(player: self)
    }
    
    func hasBusted() -> Bool {
        var total = 0
        for card in hand {
            switch card.value {
            case .ace:
                total += 1
            case .two:
                total += 2
            case .three:
                total += 3
            case .four:
                total += 4
            case .five:
                total += 5
            case .six:
                total += 6
            case .seven:
                total += 7
            case .eight:
                total += 8
            case .nine:
                total += 9
            case .ten, .jack, .queen, .king:
                total += 10
            }
        }
        return total > 21
    }
}

//: ### The Dealer class is-a BlackjackPlayer and it inherits all its properties/methods.
class Dealer: BlackjackPlayer {
    var deck = Deck()
    // TODO: init with all players
    
    func dealTo(player: BlackjackPlayer) {
        if let card = deck.cards.popLast(),
            var faceUp = deck.cards.popLast()
        {
            faceUp.isFaceDown = false
            player.hand = [card, faceUp]
        }
    }
    
    func playTurn(player: BlackjackPlayer) {
        // the blackjack dealer always has to hit if hand is < 17 pts, else stand
    }
    
    func hit(player: BlackjackPlayer) {
        if var card = deck.cards.popLast() {
            card.isFaceDown = false
            player.hand.append(card)
        }
    }
    
    func stand(player: BlackjackPlayer) {
        // tell next player to playTurn
    }
}


/*
 
// Uncomment when ready.

let dealer = Dealer()
let p = BlackjackPlayer()

p.stand(dealer: dealer)
p.hit(dealer: dealer)

let player1 = BlackjackPlayer()
let player2 = BlackjackPlayer()

dealer.dealTo(player: player1)
dealer.dealTo(player: player2)

player1.playTurn(dealer: dealer)
player2.playTurn(dealer: dealer)
dealer.playTurn(dealer: dealer)

*/
