//: [Previous](@previous)
/*:
## While Loops
While loops are a simple variety of a loop—they only test a condition. If the condition is not true when we first start the loop, the loop will not execute its code block. While loops are preferred when we don't know exactly how many times a loop will run.
*/
import Foundation

//var i = 1
//while (i < 1000) {
//    i += i
//}
//print(i)

//var dieRoll1: Int = 2
//var dieRoll2: Int = 2
//while (!(dieRoll1 == 1 && dieRoll2 == 1)) {
//    dieRoll1 = Int(arc4random() % 6) + 1
//    dieRoll2 = Int(arc4random() % 6) + 1
//    print("\(dieRoll1), \(dieRoll2)")
//}

while (true) {
    let dieRoll1 = arc4random() % 6 + 1
    let dieRoll2 = Int(arc4random() % 6) + 1
    print("\(dieRoll1), \(dieRoll2)")
    if dieRoll1 == 1 && dieRoll2 == 1 {
        break
    }
}

