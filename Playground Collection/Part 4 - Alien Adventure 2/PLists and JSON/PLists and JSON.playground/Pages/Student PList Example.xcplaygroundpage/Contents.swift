/*:
## Student PList Example
We'll create some Students for this example.
*/
struct Student {
    let name: String
    var age: Int
    var school: String
}

//: This code creates an array of dictionaries from a file called Students.plist that is bundled with this playground.
import Foundation

let studentPList = NSBundle.mainBundle().URLForResource("Students", withExtension: "plist")!
let studentArray = NSArray(contentsOfURL: studentPList)!

//: This code uses the array of dictionaries (studentArray) to create an array of Student structs called studentStructs.
var studentStructs = [Student]()

// must cast the values into most appropriate type
for student in studentArray {
    if let name = student["name"] as? String {
        if let age = student["age"] as? Int {
            if let school = student["school"] as? String {
                studentStructs.append(Student(name: name, age: age, school: school))
            }
        }
    }
}

//: Once we've parsed the PList and created our structs we can use them more efficiently
for student in studentStructs {
    print("\(student.name) is \(student.age) years old and attends the \(student.school).")
}

//: [Next](@next)
