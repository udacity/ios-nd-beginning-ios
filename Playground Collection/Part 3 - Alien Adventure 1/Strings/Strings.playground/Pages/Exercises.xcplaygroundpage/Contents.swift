//: [Previous](@previous)
import Foundation
//: ## Exercises

//: ### Exercise 1
//: Recreate the shoutString by using the didYouKnowString as a stem.
let didYouKnowString = "Did you know that the Swift String class comes with lots of useful methods?"
let whisperString = "psst" + ", " + didYouKnowString.lowercased()
let shoutString =  whisperString.uppercased()

//: ### Exercise 2
//: How many characters are in this string?
let howManyCharacters = "How much wood could a woodchuck chuck if a woodchuck could chuck wood?"
howManyCharacters.characters.count

//: ### Exercise 3
//: Write a program that tells you whether or not this string contains the substring "ham".
var word = "bounce"
word.contains("ounce")

//: ### Exercise 4
//: Write a program that deletes all occurrences of the word "like" in the following string.
let lottaLikes = "If like, you wanna learn Swift, like, you should build lots of small apps, cuz it's like, a good way to practice."
let lessLikes = lottaLikes.replacingOccurrences(of: "like", with: "")

//: ### Exercise 5
//: Mia is moving in to a new apartment and she needs to pay first and last month's rent plus a security deposit. Use string interpolation to replace the word "total" with the correct total.

var securityDeposit = 500
var monthlyRent = 1000
var excerptFromLease = "\(monthlyRent * 2 + securityDeposit) is due on the move-in date"
//: [Next](@next)
