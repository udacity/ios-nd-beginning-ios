//: [Previous](@previous)

import Foundation

//: ## What is a string made of?
//:
//: It is a struct with two properties of note: .characters and .unicodeScalars

//: You can use the .characters property to ...

// Loop through all the characters in a string
var animal = "octopus"
for character in animal.characters {
    if character == "o" {
        print("🐙")
    } else {
        print ("\(character)")
    }
}

for s in animal.characters {
    print(s)
}

// Count all the characters in a string
let theTruth = "Money can't buy me love."
theTruth.characters.count

// Reverse the characters in a string 
var forwardString = "spoons"
var backwardsString = String(forwardString.characters.reversed())

//: Unicode scalars are the backbone of Swift strings. As a result, we can incorporate any unicode character directly into a string, including emojis!
let similarTruth = "💰can't buy me 💖"

var nWithTilde = "\u{0303}"
nWithTilde.characters.count
nWithTilde.unicodeScalars.count

//: [Next](@next)
