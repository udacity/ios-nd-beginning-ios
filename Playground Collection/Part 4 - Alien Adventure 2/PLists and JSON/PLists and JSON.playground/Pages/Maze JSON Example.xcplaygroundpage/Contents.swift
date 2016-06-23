//: [Previous](@previous)
/*:
## Maze JSON Example
**This time we have moved all the code for visualizing a Maze (from a NSDictionary) into an external file. We can reuse that code to visualize the same maze from JSON instead of a PList file.**
*/
import UIKit

let mazeJSONURL = NSBundle.mainBundle().URLForResource("Maze1", withExtension: "json")!
let rawMazeJSON = NSData(contentsOfURL: mazeJSONURL)!

var mazeDictionaryFromJSON: NSDictionary!
do {
    mazeDictionaryFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawMazeJSON, options: NSJSONReadingOptions()) as! NSDictionary
}

if let mazeDictionaryFromJSON = mazeDictionaryFromJSON {
    visualizeMaze(mazeDictionaryFromJSON)
}
