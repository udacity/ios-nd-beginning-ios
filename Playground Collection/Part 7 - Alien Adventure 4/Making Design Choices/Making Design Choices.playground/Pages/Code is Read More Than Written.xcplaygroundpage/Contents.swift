/*:
## Code is Read More Than Written
*/
class Terse {
    let n: String
    var cfs: Bool // swim
    var cfb: Bool // bike
    var cfr: Bool // run
    
    init(n: String, cfs: Bool, cfb: Bool, cfr: Bool) {
        self.n = n
        self.cfs = cfs
        self.cfb = cfb
        self.cfr = cfr
    }
}

class Trainee {
    let name: String
    var canFinishSwim: Bool
    var canFinishBike: Bool
    var canFinishRun: Bool
    
    init(name: String, canFinishSwim: Bool, canFinishBike: Bool, canFinishRun: Bool) {
        self.name = name
        self.canFinishSwim = canFinishSwim
        self.canFinishBike = canFinishBike
        self.canFinishRun = canFinishRun
    }
}

//: [Next](@next)

