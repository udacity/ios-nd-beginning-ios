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
    var isFaceDown: Bool
    
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
    
    var valueDisplay: String {
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

let suits: [SuitedCard.Suit] = [.Hearts, .Diamonds, .Clubs, .Spades]
let values: [SuitedCard.Value] = [.Two, .Three, .Four, .Five, .Six, .Seven, .Eight, .Nine, .Ten, .Jack, .Queen, .King, .Ace]

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
        dealer.hit(self)
    }
    
    func stand(dealer: Dealer) {
        dealer.stand(self)
    }
    
    func hasBusted() -> Bool {
        var total = 0
        for card in hand {
            switch card.value {
            case .Ace:
                total += 1
            case .Two:
                total += 2
            case .Three:
                total += 3
            case .Four:
                total += 4
            case .Five:
                total += 5
            case .Six:
                total += 6
            case .Seven:
                total += 7
            case .Eight:
                total += 8
            case .Nine:
                total += 9
            case .Ten, .Jack, .Queen, .King:
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
    
    func dealTo(player:BlackjackPlayer) {
        if let card = deck.cards.popLast(),
            var faceUp = deck.cards.popLast()
        {
            faceUp.isFaceDown = false
            player.hand = [card, faceUp]
        }
    }
    
    override func playTurn(dealer: Dealer) {
        // the blackjack dealer always has to hit if hand is < 17 pts, else stand
    }
    
    override func hit(player:BlackjackPlayer) {
        if var card = deck.cards.popLast() {
            card.isFaceDown = false
            player.hand.append(card)
        }
    }
    
    override func stand(dealer: BlackjackPlayer) {
        // tell next player to playTurn
    }
}

/*

// Uncomment when ready.

let dealer = Dealer()
let p = BlackjackPlayer()

p.stand(dealer)
p.hit(dealer)

let player1 = BlackjackPlayer()
let player2 = BlackjackPlayer()

dealer.dealTo(player1)
dealer.dealTo(player2)

player1.playTurn(dealer)
player2.playTurn(dealer)
dealer.playTurn(dealer)

*/
