//: [Previous](@previous)

//: ## Quiz: Choose the correct type for this closure
var soup = ["tomato", "hot and sour", "french onion", "vegetable"]
var alphabeticalSoup = soup.sort({ (soup1: String, soup2: String) -> Bool in
    return soup2 > soup1
})

alphabeticalSoup
//: [Next](@next)
