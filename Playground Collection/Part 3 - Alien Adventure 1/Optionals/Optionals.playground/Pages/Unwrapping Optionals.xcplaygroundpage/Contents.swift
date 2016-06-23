//: [Previous](@previous)

import Foundation
import UIKit

//: ### Unwrapping Optionals with If Let
// Example 1: A scenario that could return an optional with a nil value
var zee: Int?

let strings = ["ABC","123"]
let randomIndex = Int(arc4random() % 2)
let anotherString = strings[randomIndex]

zee = Int(anotherString)

if let intValue = zee {
    intValue * 2
} else {
    "No value"
}

//Example 2: Another example with UIImageView

var imageView = UIImageView()
imageView.image = UIImage(named:"puppy_in_box")

if let image = imageView.image {
    let size = image.size
} else {
    print("This image hasn't been set.")
}

imageView.image

//: [Next](@next)
