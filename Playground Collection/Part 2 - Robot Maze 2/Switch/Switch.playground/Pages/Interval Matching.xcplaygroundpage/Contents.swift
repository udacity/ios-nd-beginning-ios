//: [Previous](@previous)

//: ## Switch Statement Syntax: Interval Matching

import Foundation


// Example: The Visible Spectrum
let wavelength = 410
var color = "color"

switch wavelength {
case 380...450:
    color = "violet"
case 451...495:
    color = "blue"
case 496...570:
    color = "green"
case 571...590:
    color = "yellow"
case 621...750:
    color = "red"
default:
    color = "not visible"
}

//: [Next](@next)
