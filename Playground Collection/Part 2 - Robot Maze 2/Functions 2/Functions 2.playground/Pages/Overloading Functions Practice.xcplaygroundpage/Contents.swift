//: [Previous](@previous)
/*:
## Overloading Functions Practice
*/
//: ### Exercise 1
//: Define a function called `volume` that takes 1 `Double` parameter called `side`. The function should return a `Double` that is the volume of a cube which is `side * side * side`.
//: **The solution is available on the next page!**
func volume(side: Double) -> Double {
    return side * side * side
}

volume(side: 5)
//: ### Exercise 2
//: Define a function called `volume` that takes 2 `Double` parameters: `radius` and `height`. The function should return a `Double` that is the volume of a cylinder which is roughly `3.14 * r * r * h`.
//: **The solution is available on the next page!**
func volume(radius: Double, height: Double) -> Double {
    return 3.14 * radius * radius * height
}

volume(radius: 4, height: 3)
//: ### Exercise 3
//: Define a function called `volume` that takes 3 `Double` parameters: `length`, `height`, and `width`. The function should return a `Double` that is the volume of a cuboid which is `length * height * width`.
//: **The solution is available on the next page!**
func volume(length: Double, height: Double, width: Double) -> Double {
    return length * height * width
}

volume(length: 3, height: 4, width: 5)

//: [Next](@next)
