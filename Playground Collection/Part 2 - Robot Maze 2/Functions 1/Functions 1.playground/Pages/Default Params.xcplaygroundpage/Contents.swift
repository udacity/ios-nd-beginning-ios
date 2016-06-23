//: [Previous](@previous)
/*:
## Default Params
*/
func calculatePriceForMealWithTip(priceOfMeal: Double, tipPercentage: Double = 0.15) -> Double {
    return priceOfMeal + (priceOfMeal * tipPercentage)
}

// This call uses the default tip of 15% (0.15)
calculatePriceForMealWithTip(43.27)

calculatePriceForMealWithTip(43.27, tipPercentage: 0.20)
calculatePriceForMealWithTip(43.27, tipPercentage: 0.25)
//: [Next](@next)
