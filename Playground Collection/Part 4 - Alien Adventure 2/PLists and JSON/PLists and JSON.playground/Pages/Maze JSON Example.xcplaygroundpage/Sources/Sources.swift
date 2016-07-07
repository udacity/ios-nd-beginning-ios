import Foundation

public enum MazeCellDirection: Int {
    case top = 0, right, bottom, left
}

public func visualizeMaze(mazeDictionary: NSDictionary) -> String {
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

public func makeMazeString(rows: Int, columns: Int, cellData: [[[Bool]]]) -> String {
    
    var finalStr: String = ""
    
    for r in 0..<rows {
        
        // add the top section
        for c in 0..<columns {
            finalStr += makeTopOrBottomSection(cellData: cellData[r][c], direction: .top)
        }
        finalStr += "\n"
        
        // add the middle section
        for c in 0..<columns {
            let isStar = (r == 1 && c == 0) ? true : false
            finalStr += makeMidSection(cellData: cellData[r][c], isStar: isStar)
        }
        finalStr += "\n"
        
        // add the bottom section
        for c in 0..<columns {
            finalStr += makeTopOrBottomSection(cellData: cellData[r][c], direction: .bottom)
        }
        finalStr += "\n"
    }
    
    return finalStr
}

public func makeTopOrBottomSection(cellData: [Bool], direction: MazeCellDirection) -> String {
    if(cellData[direction.rawValue] == true) {
        return "⬛️⬛️⬛️"
    } else {
        return "⬛️◻️⬛️"
    }
}

public func makeMidSection(cellData: [Bool], isStar: Bool) -> String {
    let middleCell = (isStar) ? "🔶" : "◻️"
    
    if(cellData[MazeCellDirection.right.rawValue] == true && cellData[MazeCellDirection.left.rawValue] == true) {
        return "⬛️\(middleCell)⬛️"
    } else if(cellData[MazeCellDirection.right.rawValue] == true && cellData[MazeCellDirection.left.rawValue] == false) {
        return "◻️\(middleCell)⬛️"
    } else if(cellData[MazeCellDirection.right.rawValue] == false && cellData[MazeCellDirection.left.rawValue] == true) {
        return "⬛️\(middleCell)◻️"
    } else {
        return "◻️\(middleCell)◻️"
    }
}
