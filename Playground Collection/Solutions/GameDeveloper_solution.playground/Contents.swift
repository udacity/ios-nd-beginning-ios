//: If Statements Exercise: Ship it!  Or don't ...

import UIKit

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
    if game.bugs < 10 && game.hasMusic && game.levels > 5 {
        release(game)
    }
    
    if game.bugs >= 10 {
        print("Uh oh, need to fix those bugs.")
    }
    
    if !game.hasMusic {
        print("Gotta have tunes!")
    }
    
    if game.levels <= 5 {
        print ("Need more levels!")
    }
}

checkGameForRelease(ponyQuest)
checkGameForRelease(sixDegreesOfKevinBacon)
checkGameForRelease(slowAdventuresWithMorrisTheLoris)
