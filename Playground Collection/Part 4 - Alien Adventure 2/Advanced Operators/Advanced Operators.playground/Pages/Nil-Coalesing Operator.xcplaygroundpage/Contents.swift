//: [Previous](@previous)
/*:
## Nil-Coalesing Operator
*/
let yummyRestuarant = "Chez Lulu"
var newFavoriteRestuarant: String? = "Chez Fonfon"

let whereToEat = newFavoriteRestuarant ?? yummyRestuarant

/*:
**Chaining the Nil-Coalesing Operator**

We'll create the UdacityStudent struct for this example.
*/
struct UdacityStudent {
    let name: String?
    let username: String?
    let userID: Int
}

// if a student's name is given, then use it
// otherwise, if a student's username is given, then use it
// otherwise, use the student's userID
func getDisplayName(student: UdacityStudent) -> String {
    if let name = student.name {
        return name
    } else if let username = student.username {
        return username
    } else {
        return String(student.userID)
    }
}

// with the nil-coalesing operator, we can do this in one line!
func getDisplayNameNilCoalesing(student: UdacityStudent) -> String {
    return student.name ?? student.username ?? String(student.userID)
}

let jarrod = UdacityStudent(name: "Jarrod", username: "jarrod", userID: 1)
let james = UdacityStudent(name: nil, username: "james", userID: 2)
let john = UdacityStudent(name: nil, username: nil, userID: 3)

getDisplayName(jarrod)
getDisplayNameNilCoalesing(jarrod)

getDisplayName(james)
getDisplayNameNilCoalesing(james)

getDisplayName(john)
getDisplayNameNilCoalesing(john)

//: [Next](@next)
