//: [Previous](@previous)
/*:
## Variable Params Solution
*/
struct EmployeeData {
    var baseSalary: Double
    var raisesGiven: Int
}

//: ### Exercise 1
//: Define a function called `increasePay` that takes 1 `EmployeeData` parameter called `employeeData` and 1 `Double` parameter called `percentRaise`. **`employeeData` should be a variable parameter**. The function should **add** to its `baseSalary` property by a value of `baseSalary * percentRaise` and increase the `raisesGiven` property by 1. Then, the function should return the modified `employeeData`.
func increasePay(var employeeData: EmployeeData, percentRaise: Double) -> EmployeeData {
    employeeData.baseSalary += (employeeData.baseSalary * percentRaise)
    employeeData.raisesGiven += 1
    return employeeData
}

var employee001 = EmployeeData(baseSalary: 15000, raisesGiven: 0)

employee001.baseSalary
employee001.raisesGiven
employee001 = increasePay(employee001, percentRaise: 0.10)
employee001.baseSalary
employee001.raisesGiven

//: [Next](@next)
