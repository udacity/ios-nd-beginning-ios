//: [Previous](@previous)

//: ## Dictionary Operations
//: ### Retrieving the value for a particular key
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride", "monkeys":"barrel"]

let groupOfWhales = animalGroupsDict["whales"]
//: Why would the code below return an optional?
//:
//:     animalGroupsDict["whales"]
// We unwrap a value returned from a dictionary just like we would unwrap any other optional.
if let groupOfWhales = animalGroupsDict["whales"] {
    print("We saw a \(groupOfWhales) of whales from the boat.")
} else {
    print("No value found for that key.")
}

// What happens if the key isn't found?
if let groupOfSasquatches = animalGroupsDict["Sasquatches"] {
    print("We saw a \(groupOfSasquatches) of Sasquatches on our hike.")
} else {
    print("No value found for that key.")
}

//: [Next](@next)
