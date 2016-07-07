//: [Previous](@previous)
/*:
## Chaining Functions Together
*/
func addExcitementToString(_ string: String) -> String {
    return string + "!"
}

// chained together twice
let excitedString = addExcitementToString(addExcitementToString("yay"))

// chained together 4 times
let reallyExcitedString = addExcitementToString(addExcitementToString(addExcitementToString(addExcitementToString("wahoo"))))
