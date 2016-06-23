//: [Previous](@previous)
/*:
## Overloading Functions Solution
*/
//: ### Exercise 1
//: Define a function called `volume` that takes 1 `Double` parameter called `side`. The function should return a `Double` that is the volume of a cube which is `side * side * side`.
func volume(side: Double) -> Double {
    return side * side * side
}

volume(5.0)

//: ### Exercise 2
//: Define a function called `volume` that takes 2 `Double` parameters: `radius` and `height`. The function should return a `Double` that is the volume of a cylinder which is roughly `3.14 * radius * radius * height`.
func volume(radius: Double, height: Double) -> Double {
    return 3.14 * radius * radius * height
}

volume(2.7, height: 10)

//: ### Exercise 3
//: Define a function called `volume` that takes 3 `Double` parameters: `length`, `height`, and `width`. The function should return a `Double` that is the volume of a cuboid which is `length * height * width`.
func volume(length: Double, height: Double, width: Double) -> Double {
    return length * height * width
}

volume(3, height: 5, width: 6)

//: [Next](@next)
