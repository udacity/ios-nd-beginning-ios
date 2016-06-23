//: [Previous](@previous)
import Foundation
//: ## Closure expression syntax: sort()

var bids = [48, 75, 63, 52, 6]
var orderedBids = bids.sort( {(bid1: Int, bid2: Int) -> Bool in
    return  bid2 > bid1
})

print(orderedBids, terminator: "")
//: Closures typically take the form:
//:
//: { (parameters) -> return type **in**
//:
//:     statements to execute
//:
//:}

var birthYears: [Int] = [2004, 2011, 2007, 2005, 2002]
var reverseChronologicalYears = birthYears.sort({ (year1: Int, year2: Int) -> Bool in
    return year1 > year2
})

print(reverseChronologicalYears, terminator: "")
//: [Next](@next)
