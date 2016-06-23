//: [Previous](@previous)

//: ## Enum initialization

// As you saw in the previous example, enums may be initialized by assigning a specific member of the enum to a variable or constant.
enum CaliforniaPark {
    case Yosemite, DeathValley, Lasson, Sequoia
}
var destination = CaliforniaPark.Yosemite

// Enum types may also be initialized with rawValues.
enum MazeDirection: Int {
    case Up = 0, Right, Down, Left
}

var currentDirection = MazeDirection(rawValue: 0)

enum AmericanLeagueWest: String {
    case As = "Oakland"
    case Astros = "Houston"
    case Angels = "Los Angeles"
    case Mariners = "Seattle"
    case Rangers = "Arlington"
}

let myFavoriteTeam = AmericanLeagueWest(rawValue: "Oakland")

//: [Next](@next)
