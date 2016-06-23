//: [Previous](@previous)

import Foundation

// The && operator
//: let compoundBool = <first boolean expression> & & <second boolean expression>
// If a job candidate has both the technical skills and the communications skills for the position...
let technicalSkills: Bool = true
let communicationSkills: Bool = true

let hire = technicalSkills && communicationSkills

// The && operator can be used to combine multiple comparison operators
let audienceRating = 85
let criticsRating = 75

let goWatchMovie = audienceRating > 90 && criticsRating > 80

//: [Next](@next)
