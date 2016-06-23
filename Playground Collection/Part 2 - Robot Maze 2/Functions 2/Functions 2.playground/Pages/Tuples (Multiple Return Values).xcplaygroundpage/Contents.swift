//: [Previous](@previous)
/*:
## Tuples (Multiple Return Values)
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

//: This function returns a tuple — which is a comma-seperated list of zero or more types. In this case, the tuple contains two values that are both of type Double.
func averageAndSlugging(stats: BaseballHittingStats) -> (Double, Double) {
    return (Double(stats.hits)/Double(stats.atBats), Double(stats.singles + (2 * stats.doubles) + (3 * stats.triples) + (4 * stats.homeRuns))/Double(stats.atBats))
}

//: To reference a value in a tuple, use the dot operator followed by the position of the value within the tuple.
let averageAndSluggingTuple = averageAndSlugging(miguelCabrera)
averageAndSluggingTuple.0   // batting average
averageAndSluggingTuple.1   // slugging percentage

//: [Next](@next)
