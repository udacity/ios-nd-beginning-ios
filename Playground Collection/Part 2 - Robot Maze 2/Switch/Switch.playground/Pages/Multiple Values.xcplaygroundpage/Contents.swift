//: [Previous](@previous)

//: ## Switch Statement Syntax: Multiple Values

import Foundation

//Example: Match Months to their Seasons
let month = "December"

switch month {
case "December", "January", "February":
    print("Winter")
case "March", "April", "May":
    print("Spring")
case "June", "July", "August":
    print("Summer")
case "September", "October", "November":
    print("Fall")
default:
    print("Not a month")
}

// Match  Months to their Seasons as an If, Else-if Statement
if month == "December" || month == "January" || month == "February" {
    print("Winter")
} else if month == "March" || month == "April" || month == "May" {
    print("Spring")
} else if month == "June" || month == "July" || month == "August" {
    print("Summer")
} else if month == "September" || month == "October" || month == "November" {
    print("Fall")
} else {
    print("Not a month")
}

//: [Next](@next)
