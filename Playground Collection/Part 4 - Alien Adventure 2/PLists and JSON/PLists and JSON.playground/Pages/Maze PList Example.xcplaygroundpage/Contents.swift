//: [Previous](@previous)
/*:
## Maze PList Example
`MazeCellDirection` provides a way for us to index `Bool` arrays for each MazeCellModel. Remember a `MazeCellModel` can be roughly represented as a `Bool` array:

`let mazeCellModelAsBoolArray = [topValue, rightValue, bottomValue, leftValue]`

Hence, we can index each values using a `MazeCellDirection's` rawValue.

`mazeCellModelAsBoolArray[MazeCellDirection.Top.rawValue]` would give us the first value in the `mazeCellModelAsBoolArray`.
*/
enum MazeCellDirection: Int {
    case Top = 0, Right, Bottom, Left
}

//: This function takes an `NSDictionary` (essentially a `Dictionary` with type `[String:AnyObject]`) that represents a maze, and then creates a `String` of walls (⬛️) and openings/paths (◻️) which visualizes the maze.
import Foundation

func visualizeMaze(mazeDictionary: NSDictionary) -> String {
    // do we have all the required key/value pairs?
    if let rows = mazeDictionary["rowCount"] as? Int {
        if let columns = mazeDictionary["columnCount"] as? Int {
            if let cellData = mazeDictionary["cellData"] as? [[[Bool]]] {
                return makeMazeString(rows: rows, columns: columns, cellData: cellData)
            } else {
                return "Key 'cellData' does not exist in \(mazeDictionary)"
            }
        } else {
            return "Key 'columnCount' does not exist in \(mazeDictionary)"
        }
    } else {
        return "Key 'rowCount' does not exist in \(mazeDictionary)"
    }
}

/*:
The `makeMazeString` function loops through each row of `MazeCellModel` (represented as `Bool` arrays) and builds a `String` which visualizes the maze.

To build the `String`, it generates each row in sections: a top section, a middle section, and a bottom section. Here is an example:
*/
/*
⬛️⬛️⬛️  // top section
⬛️◻️⬛️  // middle section
⬛️⬛️⬛️  // bottom section

Note: The `makeMazeString` function also inserts a "star" in a hardcoded location.
*/
func makeMazeString(rows rows: Int, columns: Int, cellData: [[[Bool]]]) -> String {
    
    var finalStr: String = ""
    
    for r in 0..<rows {
        
        // add the top section
        for c in 0..<columns {
            finalStr += makeTopOrBottomSection(cellData[r][c], direction: .Top)
        }
        finalStr += "\n"
        
        // add the middle section
        for c in 0..<columns {
            let isStar = (r == 1 && c == 0) ? true : false
            finalStr += makeMidSection(cellData[r][c], isStar: isStar)
        }
        finalStr += "\n"
        
        // add the bottom section
        for c in 0..<columns {
            finalStr += makeTopOrBottomSection(cellData[r][c], direction: .Bottom)
        }
        finalStr += "\n"
    }
    
    return finalStr
}

func makeTopOrBottomSection(cellData: [Bool], direction: MazeCellDirection) -> String {
    if(cellData[direction.rawValue] == true) {
        return "⬛️⬛️⬛️"
    } else {
        return "⬛️◻️⬛️"
    }
}

func makeMidSection(cellData: [Bool], isStar: Bool) -> String {
    let middleCell = (isStar) ? "🔶" : "◻️"
    
    if(cellData[MazeCellDirection.Right.rawValue] == true && cellData[MazeCellDirection.Left.rawValue] == true) {
        return "⬛️\(middleCell)⬛️"
    } else if(cellData[MazeCellDirection.Right.rawValue] == true && cellData[MazeCellDirection.Left.rawValue] == false) {
        return "◻️\(middleCell)⬛️"
    } else if(cellData[MazeCellDirection.Right.rawValue] == false && cellData[MazeCellDirection.Left.rawValue] == true) {
        return "⬛️\(middleCell)◻️"
    } else {
        return "◻️\(middleCell)◻️"
    }
}

//: Load the contents of Maze1.plist into an `NSDictionary` and visualize the maze!
let mazePListURL = NSBundle.mainBundle().URLForResource("Maze1", withExtension: "plist")!
let mazeDictionaryFromPList = NSDictionary(contentsOfURL: mazePListURL)

if let mazeDictionaryFromPList = mazeDictionaryFromPList {
    visualizeMaze(mazeDictionaryFromPList)
}
//: [Next](@next)
