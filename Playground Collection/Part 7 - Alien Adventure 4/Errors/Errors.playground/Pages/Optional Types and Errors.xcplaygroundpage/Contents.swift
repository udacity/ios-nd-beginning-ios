//: [Previous](@previous)
/*:
## Try? and Try!
*/

import Foundation

// Defining our own custom error type.
enum MyError: ErrorType {
    case ItDidNotWork
}

// This method throws an error.
func methodThatThrows() throws {
    print("After this line, we will throw an error")
    throw MyError.ItDidNotWork
}

// This method returns a result (and can throw an error).
func methodThatThrowsWithResult() throws -> String {
    // throw MyError.ItDidNotWork
    return "Will never get here"
}

let optionalValue = try? methodThatThrowsWithResult()
optionalValue == nil

// THIS LINE WILL CRASH!
// try! "this will crach".writeToURL(NSURL(), atomically: false, encoding: 0)
