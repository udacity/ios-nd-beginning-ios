//: [Previous](@previous)
import Foundation

// Exercises with Logical Operators

// Exercise 1
let finishedHomework = false
let schoolTomorrow = true
let notAllowedToPlayVideoGames = !finishedHomework && schoolTomorrow

// Exercise 2
var hungry = false
var isPie = true
var shouldEat = hungry || isPie

// Exercise 3
let audienceRating = 75
let criticsRating = 85

let goWatchMovie = audienceRating > 90 && criticsRating > 80

audienceRating > 90 || criticsRating > 80
audienceRating <= 90 || criticsRating <= 80
audienceRating <= 90 && criticsRating <= 80//: [Next](@next)
