//: [Previous](@previous)
/*:
## Bitwise Operators
Bitwise NOT operator (also called INVERT)
*/
var someBits: UInt8 = 0b00001111

let invertedBits = ~someBits  // equals 11110000
//: **Bitwise AND operator**
someBits =                0b01011100
var someMoreBits: UInt8 = 0b11101000

let andBits = someBits & someMoreBits // equals 0b01001000
//: **Bitwise OR operator**
someBits =     0b01101111
someMoreBits = 0b10001111

let orBits = someBits | someMoreBits // equals 0b11101111
//: **Bitwise XOR operator**
someBits =     0b11000011
someMoreBits = 0b10011001

let xorBits = someBits ^ someMoreBits // equals 0b01011010
/*:
**Bitwise Left Shift operator**

See [Apple's Docs on Advanced Operators](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html), go to the "Bitwise Left and Right Shift Operators" section)
*/
someBits = 0b00010001

var leftShiftedBits = someBits << 1 // equals 0b00100010
leftShiftedBits = leftShiftedBits << 2 // eqauls 0b10001000

/*:
**Bitwise Right Shift operator**

See [Apple's Docs on Advanced Operators](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html), go to the "Bitwise Left and Right Shift Operators" section)
*/
someBits = 0b00010001

var rightShiftedBits = someBits >> 3 // equals 0b000000010

/*:
Note: You can combine the following bitwise operators with assignment:

- <<= Left bit shift and assign
- >>= Right bit shift and assign
- &= Bitwise AND and assign
- ^= Bitwise XOR and assign
- |= Bitwise OR and assign
*/
let bottomBitMask: UInt8 = 0b00001111
someBits = 0b01011100
someMoreBits = 0b1101000

// here is an example of Bitwise AND and assignment
someBits &= bottomBitMask // equals 0b00001100
someMoreBits &= bottomBitMask // equals 0b00001000

//: Here is a more practical example with bitwise operators that seperates the RGB components of a color. Check out [this fun video](https://www.youtube.com/watch?v=5KZJbMomxa4) to see how RGB color theory works!
import UIKit

func colorFromHex(hexValue: UInt32) -> UIColor {
    // 1. filters each component (rgb) with bitwise AND
    // 2. shifts each component (rgb) to a 0-255 value with bitwise right shift
    // 3. divides each component (rgb) by 255.0 to create a value between 0.0 - 1.0
    return UIColor(
        red: CGFloat((hexValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((hexValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(hexValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

let pink: UInt32 = 0xCC6699
let redComponent = (pink & 0xFF0000) // equals 0xCC0000
let greenComponent = (pink & 0x00FF00) // equals 0x006600
let blueComponent = (pink & 0x0000FF) // equals 0x000099

colorFromHex(pink)
colorFromHex(redComponent)
colorFromHex(greenComponent)
colorFromHex(blueComponent)

//: [Next](@next)
