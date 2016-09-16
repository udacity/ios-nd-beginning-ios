//: [Previous](@previous)
/*:
## UI in Playground
*/
import UIKit
import XCPlayground

//: You cannot simulate touches in a Playground, but these lines of code will  atleast allow you to see a view/button in the Assistant editor (Hotkey: Alt+Command+Enter)
let viewWithButton = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 640))
viewWithButton.backgroundColor = UIColor.white

let button = UIButton(type: .system)
button.frame = CGRect(x: 10, y: 20, width: 300, height: 40)
button.setTitle("Test Button", for: [])
button.titleLabel!.font = UIFont.systemFont(ofSize: 24)
viewWithButton.addSubview(button)
