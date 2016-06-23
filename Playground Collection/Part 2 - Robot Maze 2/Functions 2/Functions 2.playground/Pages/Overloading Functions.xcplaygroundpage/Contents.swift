/*:
## Overloading Functions
We'll create the House struct for this example.
*/
struct House {
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
}

func doubleMe(number: Int) -> Int {
    return number * 2
}

func doubleMe(string: String) -> String {
    return string + string
}

func doubleMe(house: House) -> House {
    return House(numberOfBedrooms: house.numberOfBedrooms * 2, numberOfBathrooms: house.numberOfBathrooms * 2)
}

doubleMe(4)
doubleMe("james")
doubleMe(House(numberOfBedrooms: 3, numberOfBathrooms: 2))
//: [Next](@next)
