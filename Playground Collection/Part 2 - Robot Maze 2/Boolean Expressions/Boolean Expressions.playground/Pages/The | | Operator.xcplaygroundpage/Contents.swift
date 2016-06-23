//: [Previous](@previous)
import Foundation

// The || Operator
//: let compoundBool = <first boolean expression> | | <second boolean expression>
// If Jessica finishes her homework OR it's not a school night ...

let finishedHomework = true
let noSchoolTomorrow = false

let allowedToPlayVideoGames = finishedHomework || noSchoolTomorrow

// The || operator can also be used to combine multiple comparison operators
let audienceRating = 85
let criticsRating = 75
let recommendedByAFriend = true

let goWatchMovie = (audienceRating > 90 && criticsRating > 80) || recommendedByAFriend
//: [Next](@next)
