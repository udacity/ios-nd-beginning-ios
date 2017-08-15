//: ## Functions 1 Exercises
//: In this these, you will be given the description for functions and their expected output assuming they are implemented correctly. It will be your job to finish the implementations.
//: ### Exercise 1
//: The function `emojiLove` should take two `String` parameters and use them to print a `String` with  the format "stringParameterOne ❤️ stringParameterTwo".
func emojiLove(s1: String, s2: String) {
    print("\(s1) ❤️ \(s2)")
}


emojiLove(s1: "cats", s2: "dogs") // prints "cats ❤️ dogs"
emojiLove(s1: "udacity", s2: "students") // prints "udacity ❤️ students"
emojiLove(s1: "peanut butter", s2: "jelly") // prints "peanut butter ❤️ jelly"
emojiLove(s1: "ying", s2: "yang") // prints "ying ❤️ yang"


//: ### Exercise 2
//: The function `median` should take three `Int` parameters and return the `Int` value in the middle.
func median(num1: Int, num2: Int, num3: Int) -> Int {
    if num1 >= num2 && num1 <= num3 {
        return num1
    } else if num2 >= num1 && num2 <= num3 {
        return num2
    } else {
        return num3
    }
}


print(median(num1: 1, num2: 5, num3: 6)) // 5
print(median(num1: 2, num2: 1, num3: 4)) // 2
print(median(num1: 3, num2: 6, num3: 6)) // 6
print(median(num1: -10, num2: 10, num3: 0)) // 0
print(median(num1: 0, num2: 0, num3: 0)) // 0
print(median(num1: 2, num2: 3, num3: 1)) // 2
print(median(num1: 2, num2: 2, num3: 1)) // 2


/*:
### Exercise 3

The function `beginsWithVowel` should take a single `String` parameter and return a `Bool` indicating whether the input string begins with a vowel. If the input string begins with a vowel return true, otherwise return false.

First, you will want to test if the input string is "". If the input string is "", then return false. Otherwise, you can access the first character of a `String` by using `nameOfString.characters[nameOfString.startIndex]`.


**It is assumed that the input string is given in English.**

*/
func beginsWithVowel(/* add parameters here */) /* define the return type */ {
    
}

/* Example Function Call

beginsWithVowel("Apples") // true
beginsWithVowel("pIG") // false
beginsWithVowel("oink") // true
beginsWithVowel("udacity") // true
beginsWithVowel("") // false

*/

/*:
### Exercise 4

The function `funWithWords` should take a single `String` parameter and return a new `String` that is uppercased if it begins with a vowel or is lowercased if it begins with a consonant.

To uppercase a `String`, use `nameOfString.uppercaseString`. To lowercase a `String`, use `nameOfString.lowercaseString`.

**It is assumed that the input string is given in English.**

Hint: Re-use the `beginsWithVowel` function.
*/
func funWithWords(/* add parameters here */) /* define the return type */ {
    
}

/* Example Function Call

funWithWords("Apples") // "APPLES"
funWithWords("pIG") // "pig"
funWithWords("oink") // "OINK"
funWithWords("udacity") // "UDACITY"
funWithWords("") // ""

*/
