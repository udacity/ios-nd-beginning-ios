//: [Previous](@previous)
/*:
## Comparable Example
*/
//: For a NutritionItem to be Comparable, we must define equality and the less-than-operator for NutritionItem.
struct NutritionItem: Comparable {
    let name: String
    let calories: Int
}

//: Here's equality for NutritionItem!
func ==(lhs: NutritionItem, rhs: NutritionItem) -> Bool {
    return lhs.calories == rhs.calories
}

//: And, here's the less-than-operator for NutritionItem!
func <(lhs: NutritionItem, rhs: NutritionItem) -> Bool {
    return lhs.calories < rhs.calories
}

let soda = NutritionItem(name: "soda", calories: 200)
let entireBagOfTortillaChips = NutritionItem(name: "entire bag of tortilla chips", calories: 1039)
let donut = NutritionItem(name: "donut", calories: 200)

soda > entireBagOfTortillaChips
soda == donut

//: [Next](@next)
