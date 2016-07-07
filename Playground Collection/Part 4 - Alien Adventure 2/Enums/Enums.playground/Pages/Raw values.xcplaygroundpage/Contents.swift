//: [Previous](@previous)

//: ## Raw values
// The enum, MazeDirection, is assigned rawValues that are Ints.
enum MazeDirection: Int {
    case up = 0, right, down, left
}

// In Swift, raw values can be of type String or any of the numeric types.
enum AmericanLeagueWest: String {
    case athletics = "Oakland"
    case astros = "Houston"
    case angels = "Los Angeles"
    case mariners = "Seattle"
    case rangers = "Arlington"
}

// Here, DrinkSize is assigned Int rawValues representing volume.
enum DrinkSize: Int {
    case small = 12
    case medium = 16
    case large = 20
}

// Here's how rawValues are accessed:
var message = "I hope the A's stay in \(AmericanLeagueWest.athletics.rawValue)"
var sugar = "A \(DrinkSize.small.rawValue) oz Coke has 33 g of sugar."
//: [Next](@next)
