//: [Previous](@previous)
/*:
## Functions without Multiple Params
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

//: Defining and using a function with multiple parameters.
func greetStudent(student: Student, lateForClass: Bool) {
    if lateForClass {
        print("\(student.name)... you're late 😠!")
    } else {
        print("Glad you could join us today \(student.name) ☺️")
    }
}

// Function Calls
greetStudent(gabrielle, lateForClass: false)
greetStudent(jessica, lateForClass: false)
greetStudent(jarrod, lateForClass: true)

//: [Next](@next)
