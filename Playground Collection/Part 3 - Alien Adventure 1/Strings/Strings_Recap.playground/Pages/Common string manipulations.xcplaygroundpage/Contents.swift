//: [Previous](@previous)
import Foundation
//: ## Common string manipulations

//: ### String concatenation
let monkeyString = "I saw a monkey."
let thiefString = "He stole my iPhone."

var sillyMonkeyString = monkeyString + " " + thiefString
//: ### NSString methods
sillyMonkeyString.containsString("key")

let password = "Meet me in St. Louis"
let newSillyMonkey = password.stringByReplacingOccurrencesOfString("e", withString: "3")
//: [Next](@next)
