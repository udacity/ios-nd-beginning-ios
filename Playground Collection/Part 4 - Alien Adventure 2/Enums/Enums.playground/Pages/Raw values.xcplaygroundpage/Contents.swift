//: [Previous](@previous)

//: ## Raw values
// The enum, MazeDirection, is assigned rawValues that are Ints.
enum MazeDirection: Int {
    case Up = 0, Right, Down, Left
}

// In Swift, raw values can be of type String or any of the numeric types.
enum AmericanLeagueWest: String {
    case As = "Oakland"
    case Astros = "Houston"
    case Angels = "Los Angeles"
    case Mariners = "Seattle"
    case Rangers = "Arlington"
}

// Here, DrinkSize is assigned Int rawValues representing volume.
enum DrinkSize: Int {
    case Small = 12
    case Medium = 16
    case Large = 20
}

// Here's how rawValues are accessed:
var message = "I hope the A's stay in \(AmericanLeagueWest.As.rawValue)"
var sugar = "A \(DrinkSize.Small.rawValue) oz Coke has 33 g of sugar."
//: [Next](@next)
