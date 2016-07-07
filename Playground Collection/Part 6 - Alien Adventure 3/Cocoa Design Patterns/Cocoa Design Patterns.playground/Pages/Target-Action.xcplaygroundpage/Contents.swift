//: [Previous](@previous)
/*:
## Design Pattern: Target/Action
*/
import UIKit

// The MyTarget class is intended to be used as a target.
class MyTarget: NSObject {
    @objc func performAction() {
        print("bullseye!")
    }
}

let target = MyTarget()

// Here, we create a button...
let button = UIButton()

// And set our target to perform the "performAction" function when a "TouchUpInside" event occurs.
button.addTarget(target, action: #selector(MyTarget.performAction), for: .touchUpInside)

// Simulate a "TouchUpInside" event (currently Playgrounds do not support touch events). See the Debug Area for output.
button.sendActions(for: .touchUpInside)
//: [Next](@next)
