//: [Previous](@previous)
/*:
## Beaker Example Property and Method
*/
//: ### Beaker Struct
struct Beaker {
    let volumeMilliliters: Double
    
    // These are US ounces
    var volumeOunces: Double {
        get {
            return volumeMilliliters * 0.033814
        }
    }
    
    func canCountainContents(otherBeaker: Beaker) -> Bool {
        return volumeMilliliters >= otherBeaker.volumeMilliliters
    }
}

let beaker1 = Beaker(volumeMilliliters: 200)
let beaker2 = Beaker(volumeMilliliters: 500)

beaker1.volumeOunces
beaker2.volumeOunces

beaker1.canCountainContents(beaker2)
beaker2.canCountainContents(beaker1)

//: [Next](@next)
