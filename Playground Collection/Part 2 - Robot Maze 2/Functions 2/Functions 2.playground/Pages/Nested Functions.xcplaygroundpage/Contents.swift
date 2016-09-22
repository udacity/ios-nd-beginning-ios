//: [Previous](@previous)
/*:
## Nested Functuions
*/
func approximateEarnings(hours: Double, wage: Double, roundUp: Bool) -> Int {
    
    // nested function (a function within a function)
    func round(value: Double, roundUp: Bool) -> Int {
        if roundUp {
            return Int(value) + 1
        } else {
            return Int(value)
        }
    }
    
    return round(value: hours, roundUp: roundUp) * round(value: wage, roundUp: roundUp)
}

approximateEarnings(hours: 23.35, wage: 5.75, roundUp: true)

// Because the function "round" is defined within "approximateEarnings", we cannot use it here because it is out of scope.
// round(value: 22.34, roundUp: true)
