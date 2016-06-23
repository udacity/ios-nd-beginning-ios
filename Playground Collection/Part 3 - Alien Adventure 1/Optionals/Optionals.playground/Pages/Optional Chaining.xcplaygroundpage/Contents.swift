//: [Previous](@previous)

import Foundation
import UIKit

//: ### Optional Chaining
// Example: More with UIImageView
var anotherImageView = UIImageView()
anotherImageView.image = UIImage(named:"puppy_in_box")

var size = anotherImageView.image?.size
size.dynamicType

if let imageSize = anotherImageView.image?.size {
    print("Here's the image size: \(imageSize)")
} else {
    print("This image hasn't been set.")
}
anotherImageView.image

// Example: Animals With and Without Tails

var animal = Animal(name: "Lenny", species: "lemur", tailLength: 12)

//animal = Animal(name: "Gilbert", species: "Gorilla", tailLength: nil )

if let tailLength = animal.tail?.length {
    print("\(animal.name)'s tail is \(tailLength) cm long")
} else {
    print("\(animal.name) doesn't have a tail.")
}

//: [Next](@next)
