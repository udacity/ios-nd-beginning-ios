/*:
## For-Each Loops
A for-each loop performs an action for each item in a sequence, like a range.
*/
for i in 1...10 {
    print(i)
}

for _ in 1...3 {
    print("Three cheers for Swift!")
}

let word = "Mississippi"
for c in word.characters {
    print(c)
}

for c in "Oh hi, doggie 🐕".characters {
    print(c)
}

for i in 0..<0 {
    print(i)
}
//: [Next](@next)
