import Foundation

let examplePList = Bundle.main.url(forResource: "Example", withExtension: "plist")!

// if root container is a dictionary, then load into a dictionary
let exampleDictionary = NSDictionary(contentsOf: examplePList) as! [String:Any]

// if root container is an array, then load into an array
// let exampleArray = NSArray(contentsOf: examplePList) as! [[String:Any]]



//: [Next](@next)
