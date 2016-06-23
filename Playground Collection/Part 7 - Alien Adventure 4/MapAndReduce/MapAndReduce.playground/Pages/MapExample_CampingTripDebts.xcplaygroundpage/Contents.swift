//: [Previous](@previous)
//: ## Map()
//: 
//: ### Example: Camping Trip Debts

import Foundation

let tripContributions = ["Andy": 25, "Kathleen": 50, "Janhavi": 45, "Sebastian": 10, "Chrisna": 50]
let averageTripCost = (25 + 50 + 45 + 10 + 50)/5

let tripDebts = tripContributions.map({ (key, value) -> String in
    let amountOwed = averageTripCost - value
    if amountOwed > 0 {
        return "\(key) owes $\(amountOwed)"
    } else {
        return "\(key) is owed $\(-amountOwed)"
    }
})
print(tripDebts)
//: [Next](@next)
