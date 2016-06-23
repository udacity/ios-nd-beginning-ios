//: [Previous](@previous)

//: ### Dictionary operations: insert, count, remove, update, retrieve
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride"]

// Adding items to a dictionary
animalGroupsDict["crows"] = "murder"
animalGroupsDict["monkeys"] = "troop"

// The count method is available to all collections.
animalGroupsDict.count
print(animalGroupsDict)

// Removing items from a dictionary
animalGroupsDict["crows"] = nil
animalGroupsDict

// Updating a value
animalGroupsDict["monkeys"] = "barrel"
var group = animalGroupsDict.updateValue("gaggle", forKey: "geese")
group.dynamicType

animalGroupsDict.updateValue("crash", forKey:"rhinoceroses")
print(animalGroupsDict)

//: [Next](@next)
