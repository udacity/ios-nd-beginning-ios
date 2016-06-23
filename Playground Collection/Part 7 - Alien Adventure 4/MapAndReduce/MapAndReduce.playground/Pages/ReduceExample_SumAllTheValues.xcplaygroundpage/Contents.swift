//: [Previous](@previous)
//:  ## Reduce() 
//: 
//: ### Example: Sum all the values in an array
import Foundation

let tripContributions = ["Andy": 25, "Kathleen": 50, "Janhavi": 45, "Sebastian": 10, "Chrisna": 50]
let tripContributionsArray = Array(tripContributions.values)
print(tripContributionsArray)

let totalTripCost = tripContributionsArray.reduce(0, combine: {(subtotal, contribution) -> Int in
    subtotal + contribution
})

let averageTripCost = totalTripCost/tripContributions.count

// Again in shorthand
let tripCost = tripContributionsArray.reduce(0, combine: {
    $0 + $1
})

// And with a trailing closure
let tripCostAgain = tripContributionsArray.reduce(0) {
    $0 + $1
}


//: [Next](@next)
