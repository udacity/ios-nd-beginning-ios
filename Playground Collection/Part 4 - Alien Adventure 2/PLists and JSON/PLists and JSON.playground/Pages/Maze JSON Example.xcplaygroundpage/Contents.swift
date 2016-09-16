//: [Previous](@previous)
/*:
## Maze JSON Example
**This time we have moved all the code for visualizing a Maze (from a NSDictionary) into an external file. We can reuse that code to visualize the same maze from JSON instead of a PList file.**
*/
import UIKit

let mazeJSONURL = Bundle.main.url(forResource: "Maze1", withExtension: "json")!
let rawMazeJSON = try! Data(contentsOf: mazeJSONURL)

var mazeDictionaryFromJSON: NSDictionary!
do {
    mazeDictionaryFromJSON = try! JSONSerialization.jsonObject(with: rawMazeJSON, options: JSONSerialization.ReadingOptions()) as! NSDictionary
}

if let mazeDictionaryFromJSON = mazeDictionaryFromJSON {
    visualizeMaze(mazeDictionary: mazeDictionaryFromJSON)
}
