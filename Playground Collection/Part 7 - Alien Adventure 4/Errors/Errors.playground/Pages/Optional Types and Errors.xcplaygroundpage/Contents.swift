//: [Previous](@previous)
/*:
## Try? and Try!
*/

import Foundation

// Defining our own custom error type.
enum MyError: Error {
    case itDidNotWork
}

// This method throws an error.
func methodThatThrows() throws {
    print("After this line, we will throw an error")
    throw MyError.itDidNotWork
}

// This method returns a result (and can throw an error).
func methodThatThrowsWithResult() throws -> String {
    // throw MyError.itDidNotWork
    return "Will never get here"
}

let optionalValue = try? methodThatThrowsWithResult()
optionalValue == nil

// THIS LINE WILL CRASH!
// try! "this will crash".write(to: URL(string: "")!, atomically: false, encoding: .utf8)
