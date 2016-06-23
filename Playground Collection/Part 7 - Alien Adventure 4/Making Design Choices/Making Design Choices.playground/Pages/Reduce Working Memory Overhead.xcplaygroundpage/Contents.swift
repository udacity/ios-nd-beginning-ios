//: [Previous](@previous)
/*:
## Reduce Working Memory Overhead
*/
//: ### Exercise: Code Prediction
var isLoggedIn = false
var isPreferredMember = false
var isReturnCustomer = false
var wasReferred = true
var name = "Fred Skinner"

// version 1
if isLoggedIn && (isPreferredMember || isReturnCustomer) {
    print("Very very happy to see you again \(name)")
} else if isLoggedIn && !isPreferredMember {
    print("Hello there \(name)")
} else if !isLoggedIn && wasReferred {
    print("Oh hi there \(name)")
} else if !isLoggedIn {
    print("Hi")
}

// version 2
if isLoggedIn {
    let isSpecialCustomer = isPreferredMember || isReturnCustomer
    if isSpecialCustomer {
        print("Very very happy to see you again \(name)")
    } else {
        print("Hello there \(name)")
    }
} else if wasReferred {
    print("Oh hi there \(name)")
} else  {
    print("Hi")
}

//: ### Exercise: Simplify
var isAboutToRetire = false
var isCriticallyAcclaimed = false
var hasBestSellingRecord = true
var wonAGrammyBefore = false

var percentageOddsOfGrammyWin = 0
if isAboutToRetire && (isCriticallyAcclaimed || hasBestSellingRecord) && hasBestSellingRecord {
    percentageOddsOfGrammyWin = 80
} else if isAboutToRetire && !hasBestSellingRecord {
    percentageOddsOfGrammyWin = 70
} else if !isAboutToRetire && isCriticallyAcclaimed && hasBestSellingRecord {
    percentageOddsOfGrammyWin = 50
} else if !isAboutToRetire && !wonAGrammyBefore {
    percentageOddsOfGrammyWin = 40
} else if isAboutToRetire || wonAGrammyBefore || hasBestSellingRecord || isCriticallyAcclaimed {
    percentageOddsOfGrammyWin = 35
} else {
    percentageOddsOfGrammyWin = 1
}
