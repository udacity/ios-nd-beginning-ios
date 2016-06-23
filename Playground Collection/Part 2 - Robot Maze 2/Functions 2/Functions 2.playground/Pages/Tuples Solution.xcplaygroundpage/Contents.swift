//: [Previous](@previous)
/*:
## Tuples Solution
*/
//: ### Exercise 1
//: Define a function called `basicOperations` that takes 2 `Double` parameters: `x` and `y`. The function should return a tuple of type `(Double, Double, Double, Double)` that contains resulting values for each of the four basic mathematical operations in this order: addition (+), subtraction (-), multiplication (*), and division (/). Each operation should be applied as `x [operator] y`. **Using zero may result in a crash!**.
func basicOperations(x: Double, y: Double) -> (Double, Double, Double, Double) {
    return (x + y, x - y, x * y, x / y)
}

let results = basicOperations(3, y: 2)
results.0   // addition
results.1   // subtraction
results.2   // multiplication
results.3   // division

//: [Next](@next)
