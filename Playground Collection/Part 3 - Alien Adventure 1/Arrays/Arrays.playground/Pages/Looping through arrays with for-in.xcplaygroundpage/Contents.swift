//: [Previous](@previous)

import Foundation

//: For-in loops take the general form:
//:
//:     for item in Collection {
//:         statements to execute on each item
//:     }
// Example: Finding the sum of all the Ints in an array
let intArray = [7, 21, 25, 13, 1]
var sum = 0
for value in intArray {
    sum += value
}
sum

//Example: Looping through the characters in a string

var romanticString = "How do I love thee? Let me count the ways."
var romanticStringWithKisses = ""
for character in romanticString.characters {
    if character == "o" {
        romanticStringWithKisses.append(Character("💋"))
    } else {
        romanticStringWithKisses.append(character)
    }
}

romanticStringWithKisses
//: [Next](@next)
