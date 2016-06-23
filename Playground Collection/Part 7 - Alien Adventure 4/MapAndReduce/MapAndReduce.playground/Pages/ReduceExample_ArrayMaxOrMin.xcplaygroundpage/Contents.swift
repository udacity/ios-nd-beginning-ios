//: [Previous](@previous)
//: ## Reduce()
//:
//: ### Example: Find an array's max or min
import Foundation

// Find the maximum number in an array
let numbers = [7, 89, 48, 20, 38, 89, 29]
let highestNumber = numbers.reduce(0, combine:{(currentMax, number) -> Int in
    return max(currentMax, number)
})

// Written in shorthand
let maxNumber = numbers.reduce(0, combine:{
    max($0, $1)
})

// And with a trailing closure
let maximum = numbers.reduce(0) {
    max($0, $1)
}

// Find the minimum of an array of words
let words = ["zombify", "zip","zoology", "zest","zone", "zebra"]
let firstAlphabeticalWord = words.reduce("zzz", combine: {(currentMin, word) -> String in
    min(currentMin, word)
})

print(firstAlphabeticalWord)

// Alphabetical minimum in shorthand
let alphabeticalMin = words.reduce("zzz", combine: {
    min($0,$1)
})

// And with a trailing closure
let minimumWord = words.reduce("zzz") {
    min($0,$1)
}
//: [Next](@next)
