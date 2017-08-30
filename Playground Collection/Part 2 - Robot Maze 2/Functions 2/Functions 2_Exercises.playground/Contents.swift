//: ## Functions 2 Exercises
//: In these exercise, you will be given the description for functions and their expected output assuming they are implemented correctly. It will be your job to finish the implementations.
/*:
### Exercise 1

Write two versions of a function called overloadingFun. One version accepts a single `String` parameter and the other accepts a single `Int` parameter. Both functions should return a `String` describing the input value.

Hint: See the example function calls to determine how to implement each function.

*/
func overloadingFun(_ s1: String) -> String {
    return "\(s1) is a string"
}

func overloadingFun(_ num: Int) -> String {
    return "\(num) is a int"
}


overloadingFun("softball") // "I'm a String with the value: softball"
overloadingFun(12) // "I'm an Int with the value: 12"
overloadingFun(591) // "I'm an Int with the value: 591"
overloadingFun("") // "I'm a String with the value: "
//: ### Exercise 2
//: Write a function `medianAndAverage` that takes three `Int` parameters and returns a tuple with the type `(Int, Double)` where the first value is the median of the input values and the second value is the average of the input values.
func medianAndAverage(a: Int, b: Int, c: Int) -> (Int, Double) {
    let average = (Double(a) + Double(b) + Double(c)) / 3
    var median = 0
    if a >= b && a <= c || a <= b && a >= c {
        median = a
    } else if b >= c && b <= a || b <= c && b >= a {
        median = b
    } else {
        median = c
    }
    return (median, Double(average))
}


medianAndAverage(a: 1, b: 5, c: 6) // (5, 4)
medianAndAverage(a: 2, b: 1, c: 6) // (2, 3))
medianAndAverage(a: 3, b: 15, c: 9) // (9, 9)
medianAndAverage(a: -10, b: 11, c: 0) // (0, 0.333)
medianAndAverage(a: 1, b: 2, c: 5) // (2, 2.666)
medianAndAverage(a: 2, b: 3, c: 1) // (2, 2)
medianAndAverage(a: 2, b: 2, c: 1) // (2, 1.666)

/*:
### Exercise 3

Write a function called `updateStudentRecordInOut` that performs the same task as `updateStudentRecord` except it operates upon an in-out `StudentRecord` parameter.

Hint: Should this function return a value? See the example function calls for help.

*/
struct StudentRecord {
    let id: Int
    let name: String
    var pointsEarned: Int
    var pointsPossible: Int
}

func updateStudentRecordInOut(studentRecord: inout StudentRecord, pointsEarned: Int, pointsPossible: Int) /* define return type */ {
    studentRecord.pointsEarned += pointsEarned
    studentRecord.pointsPossible += pointsPossible
}

var record2 = StudentRecord(id: 2, name: "Jarrod", pointsEarned: 27, pointsPossible: 30)


updateStudentRecordInOut(studentRecord: &record2, pointsEarned: 4, pointsPossible: 8)
record2.pointsEarned // 31
record2.pointsPossible // 38

updateStudentRecordInOut(studentRecord: &record2, pointsEarned: 8, pointsPossible: 9)
record2.pointsEarned // 39
record2.pointsPossible // 47


/*:
### Exercise 4 (Bonus Problem!)

Rewrite the nested function `innerFunction` such that the example function calls return the correct values.

Hint: The `outerFunction` implements [Exclusive OR](https://en.wikipedia.org/wiki/Exclusive_or) (XOR) which is a logical operator that returns true when there is an odd number of inputs that are true.
*/
func outerFunction(input1: Bool, input2: Bool) -> Bool {
    
    func innerFunction(a: Bool, b: Bool) -> Bool {
        if a && b || !a && !b {
            return false
        } else {
            return true
        }
        
    }
    
    return innerFunction(a: input1, b: input2) || innerFunction(a: input2, b: input1)
}


outerFunction(input1: false, input2: false) // false
outerFunction(input1: false, input2: true) // true
outerFunction(input1: true, input2: false) // true
outerFunction(input1: true, input2: true) // false
outerFunction(input1: outerFunction(input1: true, input2: true), input2: false) // false
outerFunction(input1: outerFunction(input1: false, input2: true), input2: false) // true

