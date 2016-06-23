//: [Previous](@previous)

//: ## Closure shorthand with filter()

//: ## Three tricks to make your closures more concise
var examGrades = [81, 99, 54, 84, 98]
var passingGrades = examGrades.filter({(grade: Int) -> Bool in
    return grade > 70
})
passingGrades

//: Inferring closure expression type
var grades = [81, 99, 54, 84, 98]
var failingGrades = grades.filter({grade in
    return grade < 70
})

failingGrades

//: Implicit returns
var moreGrades = [81, 99, 54, 84, 98]
var morePassingGrades = moreGrades.filter({grade in
    grade > 70
})
morePassingGrades
//: Shorthand argument names: $0, $1, $2 ...
// Example 1
var myGrades = [81, 99, 54, 84, 98]
var myFailingGrades = myGrades.filter({
    $0 < 70
})
myFailingGrades

// Example 2
var soups = ["tomato", "hot and sour", "french onion", "vegetable"]
var alphabeticalSoup = soups.sort({ (soup1, soup2) in
    return soup2 > soup1
})