//: [Previous](@previous)
//: ### Exercise 1
//: a) Initialize an empty dictionary which holds Strings as keys and Bools as values.
// Solution
var dictionary = [String: Bool]()
//: b) Initialize a dictionary using array literal syntax. The keys should be the Strings: "Anchovies", "Coconut", "Cilantro", "Liver"  and each value should be a Bool representing whether you like the food or not.
// Solution
var polarizingFoods = ["Anchovies":true, "Coconut":true, "Cilantro":true, "Liver": false]
//: ### Exercise 2
//: Insert an entry for "George H. W. Bush" to the dictionary below.
var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]

//desired output
// ["Barack Obama":"Bo", "George Bush": "Miss Beazley","Bill Clinton": "Socks", "George H. W. Bush": "Millie", "Ronald Reagan": "Lucky"]

// Solution
presidentialPetsDict["George H. W. Bush"] = "Millie"
print(presidentialPetsDict)
//: ### Exercise 3
//: Remove the entry for "George Bush" and replace it with an entry for "George W. Bush". Use the same value for both keys.

// Solution
var oldValue = presidentialPetsDict.removeValueForKey("George Bush")
presidentialPetsDict["George W. Bush"] = oldValue
//: ### Exercise 4
//: We've initialized a new dictionary of presidentialDogs with the entries from presidentialPets. Update the entry for Bill Clinton by replacing "Socks" the cat with "Buddy" the dog. Print out the presidentialDogs dictionary to test your solution.
var presidentialDogs = presidentialPetsDict

// Solution
presidentialDogs["Bill Clinton"] = "Buddy"
print(presidentialDogs)
//: ### Exercise 5
//: Use subscript syntax to fill in the print statement below and produce the following string: "Michele Obama walks Bo every morning." You'll need to retrieve a value from the presidentialDogs dictionary and unwrap it using if let.
//print("Michele Obama walks \() every morning.")

// Solution
if let dog = presidentialDogs["Barack Obama"] {
    print("Michele Obama walks \(dog) every morning.")
} else {
    print("No value found")
}
//: ### Exercise 6
// How many studio albums did Led Zeppelin release?
var studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II": 1969, "Led Zeppelin III": 1970, "Led Zeppelin IV": 1971, "Houses of the Holy":1973, "Physical Graffiti": 1975, "Presence":1976, "In Through the Out Door":1979, "Coda":1982]

// Solution
studioAlbums.count
//: [Next](@next)
