//: [Previous](@previous)
//: ### Concatenation and Copying
// Array concatenation is super convenient in Swift.
var moreNumbers = [85.0, 90.0, 95.0]
let differentNumbers = [97.5, 98.5, 99.0]
moreNumbers += differentNumbers


// Arrays are value types; they are copied by value.
var array = ["same", "same", "same"]
var arrayCopy = array

arrayCopy[2] = "different"
arrayCopy

//: [Next](@next)
