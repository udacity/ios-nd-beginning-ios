//: [Previous](@previous)
import Foundation
//: ## Map()
//:
//:
//: ### Example: Convert an array of Ints into an array of Strings

//: Let's use map() to convert an array of Ints to an array of Strings
var bids = [48, 75, 63, 52, 6]

let bidsAsStrings = bids.map({ (bid: Int) -> String in
    return String(bid)
})

//: Here's what that the same closure looks like written in shorthand
let strings = bids.map({
    String($0)
})

//: Let's do the conversion again, but this time add a currency symbol.
let bidsWithCurrency = bids.map({ (bid: Int) -> String in
    return "$\(bid)"
})

//: The same closure written in shorthand would look like this:
let bidsWithDollarSign = bids.map({
    "$\($0)"
})

//: [Next](@next)
