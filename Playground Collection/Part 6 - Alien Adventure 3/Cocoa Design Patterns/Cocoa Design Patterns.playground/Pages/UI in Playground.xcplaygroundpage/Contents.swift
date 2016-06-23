//: [Previous](@previous)
/*:
## UI in Playground
*/
import UIKit
import XCPlayground

//: You cannot simulate touches in a Playground, but these lines of code will  atleast allow you to see a view/button in the Assistant editor (Hotkey: Alt+Command+Enter)
let viewWithButton = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 640))
viewWithButton.backgroundColor = UIColor.whiteColor()

let button = UIButton(type: .System)
button.frame = CGRect(x: 10, y: 20, width: 300, height: 40)
button.setTitle("Test Button", forState: UIControlState.Normal)
button.titleLabel!.font = UIFont.systemFontOfSize(24)
viewWithButton.addSubview(button)

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
XCPlaygroundPage.currentPage.liveView = viewWithButton
