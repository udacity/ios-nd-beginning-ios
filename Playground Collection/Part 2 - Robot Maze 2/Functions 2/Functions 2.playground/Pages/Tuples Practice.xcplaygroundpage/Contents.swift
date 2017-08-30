//: [Previous](@previous)
/*:
## Tuples Practice
*/
//: ### Exercise 1
//: Define a function called `basicOperations` that takes 2 `Double` parameters: `x` and `y`. The function should return a tuple of type `(Double, Double, Double, Double)` that contains resulting values for each of the four basic mathematical operations in this order: addition (+), subtraction (-), multiplication (*), and division (/). Each operation should be applied as `x [operator] y`. **Using zero may result in a crash!**.
//: **The solution is available on the next page!**
func basicOperations(x: Double, y: Double) -> (Double, Double, Double, Double) {
    return (x + y, x - y, x * y, x / y)
}

print(basicOperations(x: 8, y: 0))
//: [Next](@next)
