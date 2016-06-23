//: [Previous](@previous)
/*:
## Variable Params
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

func generateMissingSingles(var stats: BaseballHittingStats) -> BaseballHittingStats {
    if stats.singles > 0 { return stats }
    else {
        stats.singles = stats.hits - (stats.doubles + stats.triples + stats.homeRuns)
        return stats
    }
}

// hitting stats for Chris Davis (HR leader) as of 09-14-2015 without singles listed

var chrisDavis = BaseballHittingStats(atBats: 502, hits: 132, singles: 0, doubles: 24, triples: 0, homeRuns: 42)


chrisDavis.singles
chrisDavis = generateMissingSingles(chrisDavis)
chrisDavis.singles
//: [Next](@next)
