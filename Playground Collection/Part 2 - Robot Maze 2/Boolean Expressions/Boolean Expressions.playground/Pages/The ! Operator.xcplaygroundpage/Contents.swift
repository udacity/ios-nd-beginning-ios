//: [Previous](@previous)
import Foundation

// The ! Operator

// If win is not true then lose is true.
let win = false
let lose = !win

// If finished is not true, then incomplete is true.
let finished = true
let incomplete = !finished

// If Jessica finishes her homework OR it's not a school night ...
let finishedHomework = true
let schoolTomorrow = false

let allowedToPlayVideoGames = finishedHomework || !schoolTomorrow//: [Next](@next)
//: [Next](@next)