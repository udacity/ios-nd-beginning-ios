//: [Previous](@previous)
/*:
## Naming Params
We'll create some Students for this example.
*/
struct Student {
    let name: String
    var age: Int
    var school: String
}

var gabrielle = Student(name: "Gabrielle", age: 21, school: "University of California-Berkeley")
var jessica = Student(name: "Jessica", age: 21, school: "University of Wisconsin-Madison")
var jarrod = Student(name: "Jarrod", age: 19, school: "University of Alabama-Huntsville")

/*:
**Normally, the first parameter for a function does not use an external parameter name; however, you can require an external parameter name using the following syntax:**

*func nameOfFunction(parameterName parameterName: parameterType) {*

*\/\/ body of the function*

*}*

Here's an example:
*/
func greet(student student: Student, lateForClass: Bool) {
    if lateForClass {
        print("\(student.name)... you're late 😠!")
    } else {
        print("Glad you could join us today \(student.name) ☺️")
    }
}

greet(student: gabrielle, lateForClass: false)
greet(student: jessica, lateForClass: false)
greet(student: jarrod, lateForClass: true)

//: [Next](@next)
