//: [Previous](@previous)
/*:
## In-Out Params
We'll create the BaseballHittingStats struct for this example.
*/
struct BaseballHittingStats {
    var atBats: Int
    var hits: Int
    var singles: Int
    var doubles: Int
    var triples: Int
    var homeRuns: Int
}

// hitting stats for Miguel Cabrera (hits leader) as of 09-14-2015

var miguelCabrera = BaseballHittingStats(atBats: 384, hits: 131, singles: 86, doubles: 27, triples: 1, homeRuns: 17)

func addHitsWithInOut(inout stats: BaseballHittingStats, hits: Int) {
    stats.hits += hits
    print(stats.hits)
}

// inout parameters are references!
miguelCabrera.hits
addHitsWithInOut(&miguelCabrera, hits: 2)
miguelCabrera.hits
//: [Next](@next)
