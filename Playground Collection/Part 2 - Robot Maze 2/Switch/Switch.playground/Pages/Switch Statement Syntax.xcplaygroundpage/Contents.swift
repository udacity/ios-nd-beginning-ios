//: [Previous](@previous)

//: Switch Statement Syntax
import Foundation

//:    switch variableName {
//:    case firstValue:
//:        firstStatement
//:    case secondValue:
//:        secondStatement
//:    case thirdValue, fourthValue:
//:        thirdStatement
//:    default:
//:        defaultStatement
//:    }
let month = 12

// Example: Months of the Year

switch month {
case 1: print("January")
case 2: print("February")
case 3: print("March")
case 4: print("April")
case 5: print("May")
case 6: print("June")
case 7: print("July")
case 8: print("August")
case 9: print("September")
case 10: print("October")
case 11: print("November")
case 12: print("December")
default: print("That's not a month!")
}


// Example: Coin values
let coin = "Nickel"

switch coin {
case "Quarter":
    print("25 cents")
case "Dime":
    print("10 cents")
case "Nickel":
    print("5 cents")
case "Penny":
    print("1 cent")
default:
    print("Broke.")
}

//: [Next](@next)
