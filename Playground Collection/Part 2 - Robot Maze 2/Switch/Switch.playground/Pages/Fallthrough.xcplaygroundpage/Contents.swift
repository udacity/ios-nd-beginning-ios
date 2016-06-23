//: [Previous](@previous)

import Foundation

//: ## Fallthrough

//: In Swift switch statement by default the flow of control does not fall through from one case to the next.
let temperature = 55
switch temperature {
case 10...55:
    print("Brrr")
case 55...78:
    print("Comfortable")
case 78...95:
    print("Sweaty")
default:
    print("Very uncomfortable")
}

//: But What If I _Want_ Fallthrough?
let number = 5
var description = "\(number) is"
switch number {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}


//: There are times when you don’t want any code to be executed if a certain case evaluates to true. For times like these, we can use __break__.
enum Level {
    case Low
    case Medium
    case High
}

var patienceLevel = Level.High

switch patienceLevel {
case .Low:
    print("Arrrgghh!")
    // The default case represents the remaining levels: .Medium and .High
default:
    break
}
//: [Next](@next)
