//: [Previous](@previous)

//: ## Enums and Switch statements go hand in hand
enum CaliforniaPark {
    case Yosemite, DeathValley, Lasson, Sequoia
}

var warning = ""
var destination = CaliforniaPark.Yosemite

switch destination {
case .Yosemite:
    warning = "Beware of aggressive bears!"
case .DeathValley:
    warning = "Beware of dehydration!"
case .Lasson:
    warning = "Watch out for boiling pools!"
case .Sequoia:
    warning = "Watch out for falling trees!"
}
//: [Next](@next)
