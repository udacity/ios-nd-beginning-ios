//: [Previous](@previous)
/*:
## Returning Values
*/
func calculateTip(_ priceOfMeal: Double) -> Double {
    return priceOfMeal * 0.15
}

let priceOfMeal = 43.27

let tip = calculateTip(priceOfMeal)

let totalPriceForMeal = priceOfMeal + tip

let totalPriceForMealInline = priceOfMeal + calculateTip(priceOfMeal)

//: [Next](@next)
