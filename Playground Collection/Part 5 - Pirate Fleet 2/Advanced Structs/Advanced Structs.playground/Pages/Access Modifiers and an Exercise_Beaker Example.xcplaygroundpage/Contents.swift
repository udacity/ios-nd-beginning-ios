//: [Previous](@previous)
/*:
## Beaker Example Access Modifiers and Exercises
*/
//: ### Beaker Struct
struct Beaker {
    
    let volumeMilliliters: Double
    
    // The contents are pairs of (description, millileters). This is made private so that only the Beaker can modify the contents directly.
    private var contents: [String:Double] = [:]
    
    init(volumeMilliliters: Double) {
        self.volumeMilliliters = volumeMilliliters
    }
    
    // These are US ounces
    var volumeOunces: Double {
        get {
            return volumeMilliliters * 0.033814
        }
    }
    
    var contentsVolume: Double {
        var volumeSum = 0.0
        for value in contents.values {
            volumeSum += value
        }
        return volumeSum
    }
    
    var availableMilliliters: Double {
        return volumeMilliliters - contentsVolume
    }
    
    // Adds contents to the beaker without overflowing the beaker's volume.
    mutating func addContents(name: String, amount: Double) {
        let amountWithoutOverflowing = min(availableMilliliters, amount)
        if let existingAmount = contents[name] {
            contents[name] = existingAmount + amountWithoutOverflowing
        } else {
            contents[name] = amountWithoutOverflowing
        }
    }
    
    func listContents() -> String {
        return contents.description
    }
    
    // TODO: re-implement this, keeping in mind contents
    func canContainContents(otherBeaker:Beaker) -> Bool {
        return false
    }
}

var b = Beaker(volumeMilliliters: 100)
b.addContents("baking soda", amount: 40)
b.addContents("vinegar", amount: 140)
b.listContents()

