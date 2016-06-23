import Foundation

enum MazeCellDirection: Int {
    case Top = 0, Right, Bottom, Left
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

func makeMazeString(rows rows: Int, columns: Int, cellData: [[[Bool]]]) -> String {
    
    var finalStr: String = ""
    
    for r in 0..<rows {
        
        for c in 0..<columns {
            finalStr += makeTopOrBottomSection(cellData[r][c], direction: .Top)
        }
        
        finalStr += "\n"
        
        for c in 0..<columns {
            let isStar = (r == 1 && c == 0) ? true : false
            finalStr += makeMidSection(cellData[r][c], isStar: isStar)
        }
        
        finalStr += "\n"
        
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
    
    if(cellData[1] == true && cellData[3] == true) {
        return "⬛️\(middleCell)⬛️"
    } else if(cellData[1] == true && cellData[3] == false) {
        return "◻️\(middleCell)⬛️"
    } else if(cellData[1] == false && cellData[3] == true) {
        return "⬛️\(middleCell)◻️"
    } else {
        return "◻️\(middleCell)◻️"
    }
}