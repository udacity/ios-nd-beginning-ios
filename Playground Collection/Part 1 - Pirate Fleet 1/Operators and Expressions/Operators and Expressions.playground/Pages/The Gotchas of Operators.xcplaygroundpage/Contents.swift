//: [Previous](@previous)
/*:
## The Gotchas of Operators
*/
5 + 3

5 - 3

5 - 2.5

5 * 3

5 / 3

5 * 3.5

5 / 3.0

//: Divide by zero example
var five = 5
var three = 3
var zero = 0

// let result = five / zero

//: Modulus operator (%)
5 % 5
6 % 5
7 % 5
8 % 5

//: Combining operators and assignment
var totalPayroll = 0

var billySalary = 6500000
var ericSalary = 5500000
var drewSalary = 500000

totalPayroll -= billySalary
totalPayroll -= ericSalary
totalPayroll -= drewSalary

//: Working with increment/decrement operators
var poundsOfFlour = 1
var poundsOfButter = 1
var poundsOfEggs = 1
var poundsOfSugar = 1

var totalPounds = poundsOfFlour++ + poundsOfButter + poundsOfEggs + poundsOfSugar

poundsOfFlour
