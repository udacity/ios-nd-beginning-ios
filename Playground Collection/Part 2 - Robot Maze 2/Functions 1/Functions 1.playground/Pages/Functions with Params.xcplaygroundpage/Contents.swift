//: [Previous](@previous)
/*:
## Functions with Params
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

//: Defining and using a function with parameters.
func sayHelloToStudent(student: Student) {
    print("Hello, \(student.name)!")
}

sayHelloToStudent(gabrielle)
sayHelloToStudent(jessica)
sayHelloToStudent(jarrod)
//: [Next](@next)
