//: [Previous](@previous)

import Foundation
import UIKit

//: ### Implicitly Unwrapped Optionals
// Example: Revisiting the Int() initializer method
let w =  Int("123")!
type(of: w)

// Example: Revisiting the button property on a view controller
//class BetterViewController: UIViewController {
//    var myButton: UIButton!
//}

class ViewController: UIViewController {
    
    var button:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button = UIButton()
        let title = button.title(for: UIControlState())
    }
}
//: [Next](@next)
