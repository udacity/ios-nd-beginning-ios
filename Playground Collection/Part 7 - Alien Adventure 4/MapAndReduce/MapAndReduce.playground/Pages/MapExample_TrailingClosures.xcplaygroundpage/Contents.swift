//: [Previous](@previous)
//: ## Trailing Closures


let tripContributions = ["Andy": 25, "Kathleen": 50, "Janhavi": 45, "Sebastian": 10, "Chrisna": 50]
let averageTripCost = (25 + 50 + 45 + 10 + 50)/5

// In trailing closure syntax the final parenthesis comes before the closure
let tripDebts = tripContributions.map(){ (key, value) -> String in
    let amountOwed = averageTripCost - value
    if amountOwed > 0 {
        return "\(key) owes $\(amountOwed)"
    } else {
        return "\(key) is owed $\(-amountOwed)"
    }
}


// Here's what it looked like before with the parenthesis at the end
let moreTripDebts = tripContributions.map({ (key, value) -> String in
    let amountOwed = averageTripCost - value
    if amountOwed > 0 {
        return "\(key) owes $\(amountOwed)"
    } else {
        return "\(key) is owed $\(-amountOwed)"
    }
})


//: [Next](@next)
