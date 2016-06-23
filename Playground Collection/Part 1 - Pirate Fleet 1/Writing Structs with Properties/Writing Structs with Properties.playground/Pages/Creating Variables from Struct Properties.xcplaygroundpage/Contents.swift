//: [Previous](@previous)
/*:
## Creating Variables from Struct Properties
*/
struct Student {
    let name: String
    var age: Int
    var school: String
}

var ayush = Student(name: "Ayush Saraswat", age: 19, school: "Udacity")

ayush.age = 20
ayush.school = "USC"

var collegeAged = ayush.age
var anotherSchool = ayush.school

ayush.name
//: [Next](@next)
