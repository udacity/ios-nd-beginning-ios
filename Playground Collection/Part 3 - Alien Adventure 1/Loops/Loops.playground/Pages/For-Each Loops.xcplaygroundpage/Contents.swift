/*:
## For-Each Loops
A for-each loop performs an action for each item in a sequence, like a range.
*/
import Foundation

for i in 1..<1 {
    print(i)
}

var lst = [Any]()
for i in 1...10 {
    if i % 2 == 0 {
        lst.append(String(i) + " is even")
    } else {
        lst.append(String(i) + " is odd")
    }
}
print(lst)

for _ in 1...3 {
    print("Three cheers for Swift!")
}

let word = "Mississippi"
for c in word {
    print(c)
}


for c in "Oh hi, doggie 🐕" {
    print(c)
}

for i in 0..<0 {
    print(i)
}
//: [Next](@next)
