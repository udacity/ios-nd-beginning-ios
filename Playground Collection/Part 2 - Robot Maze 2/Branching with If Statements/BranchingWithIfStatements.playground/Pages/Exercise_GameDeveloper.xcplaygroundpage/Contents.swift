//: [Previous](@previous)

import Foundation
import UIKit

//: If Statements Exercise: Ship it!  Or don't ...

class Game {
    var bugs: Int
    var hasMusic: Bool
    var levels: Int
    
    init(bugs: Int, hasMusic: Bool, levels: Int) {
        self.bugs = bugs
        self.hasMusic = hasMusic
        self.levels = levels
    }
}

var ponyQuest = Game(bugs: 12, hasMusic: true, levels: 6)
var sixDegreesOfKevinBacon = Game(bugs: 5, hasMusic: true, levels: 3)
var slowAdventuresWithMorrisTheLoris = Game(bugs: 9, hasMusic: true, levels: 7)

func release(game: Game) {
    print("Ship it!")
}

func checkGameForRelease(game: Game) {
    // TODO: Add your if statements here!
}

//: [Next](@next)
