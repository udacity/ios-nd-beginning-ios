//: [Previous](@previous)
/*:
## Custom Operators
*/
import Foundation

//: The ❗️ (prefix) operator modifies a string by prefixing "dis" in front of it.
prefix operator ❗️ {}   
prefix func ❗️ (word: String) -> String {
    return "dis" + word
}

❗️"associate"
❗️"connect"
❗️"appear"

//: The ⊡ (infix) operator performs exponentation of two integers.
infix operator ⊡ { associativity left precedence 155 }
func ⊡ (base: Int, power: Int) -> Int {
    return Int(pow(Double(base), Double(power)))
}

5 ⊡ 2
5 ⊡ 2 ⊡ 2

//: The ♣︎ (infix) operator takes two integers that create an inclusive range. Then it returns a random value from that range.
infix operator ♣︎ { associativity left precedence 155 }
func ♣︎ (from: Int, to: Int) -> Int {
    var range: UInt32 = 0
    if(from > to) {
        range = UInt32((from - to) as Int)
    } else {
        range = UInt32((to - from) as Int)
    }
    
    let randomOffset = Int(arc4random_uniform(range + 1))
    
    if(from > to) {
        return to + randomOffset
    } else {
        return from + randomOffset
    }
}

10 ♣︎ 3
1 ♣︎ 3

//: The % (postfix) operator takes an integer and returns a percentage value for it (ex. 5% returns 0.05)
postfix operator % {}
postfix func % (percent: Int) -> Double {
    return (Double(percent) / 100)
}

50%
5%
200%
