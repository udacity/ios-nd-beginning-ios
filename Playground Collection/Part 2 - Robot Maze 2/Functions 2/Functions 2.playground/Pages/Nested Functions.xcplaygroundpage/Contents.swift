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
    
    return round(value: hours, roundUp: roundUp) * round(value: hours, roundUp: roundUp)
}

// Because the function "round" is defined within "approximateEarnings", we cannot use it here because it is out of scope.
// round(22.34, roundUp: true)


approximateEarnings(hours: 10.5, wage: 9.5, roundUp: false)
