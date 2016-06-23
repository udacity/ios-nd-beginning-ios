//: ## Introduction to Switch Statements
import UIKit

let month = 12

// Let's say we wanted to convert an integer representing a month to a string.

// We could use an if, else-if statement ...
if month == 1 {
    print("January")
} else if month == 2 {
    print("February")
} else if month == 3 {
    print("March")
} else if month == 4 {
    print("April")
} else if month == 5 {
    print("May")
} else if month == 6 {
    print("June")
} else if month == 7 {
    print("July")
} else if month == 8 {
    print("August")
} else if month == 9 {
    print("September")
} else if month == 10 {
    print("October")
} else if month == 11 {
    print("November")
} else if month == 12 {
    print("December")
} else {
    print("That's not a month.")
}

// If we use a switch statement we don't have to keep typing the variable name, "month".
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

//: [Next](@next)




