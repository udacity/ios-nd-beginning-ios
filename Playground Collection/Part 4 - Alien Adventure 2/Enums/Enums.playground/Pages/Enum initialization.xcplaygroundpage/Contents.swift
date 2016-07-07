//: [Previous](@previous)

//: ## Enum initialization

// As you saw in the previous example, enums may be initialized by assigning a specific member of the enum to a variable or constant.
enum CaliforniaPark {
    case yosemite, deathValley, lasson, sequoia
}
var destination = CaliforniaPark.yosemite

// Enum types may also be initialized with rawValues.
enum MazeDirection: Int {
    case up = 0, right, down, left
}

var currentDirection = MazeDirection(rawValue: 0)

enum AmericanLeagueWest: String {
    case athletics = "Oakland"
    case astros = "Houston"
    case angels = "Los Angeles"
    case mariners = "Seattle"
    case rangers = "Arlington"
}

let myFavoriteTeam = AmericanLeagueWest(rawValue: "Oakland")

//: [Next](@next)
