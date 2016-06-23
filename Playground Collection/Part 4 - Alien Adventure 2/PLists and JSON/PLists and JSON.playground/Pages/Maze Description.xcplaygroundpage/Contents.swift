//: [Previous](@previous)
/*: 
**Recall the Maze app.**

In the Maze app, the maze is built from a 2D array of `MazeCellModel` structs. A MazeCellModel looks like this:
*/
struct MazeCellModel {
    let top: Bool
    let right: Bool
    let bottom: Bool
    let left: Bool
}

/*:
A `MazeCellModel` can be represented by an array of `Bool` values that follow this format:

[topValue, rightValue, bottomValue, leftValue]

If a value is `true`, then it represents a wall (⬛️). If a value is `false`, then it represents an opening/path (◻️). Here are some examples:
*/
/*
[true, true, true, true]
⬛️⬛️⬛️
⬛️◻️⬛️
⬛️⬛️⬛️

[true, true, true, false]
⬛️⬛️⬛️
◻️◻️⬛️
⬛️⬛️⬛️

[false, false, false, false]
⬛️◻️⬛️
◻️◻️◻️
⬛️◻️⬛️
*/

/*:
So for a 2x2 maze, we might represent the data is like this...

    {
        "cellData": [
            [
                [true,true,false,true],
                [true,true,false,true]
            ],
            [
                [false,false,true,true],
                [false,true,true,false]
            ]
        ],
        "columnCount": 2,
        "rowCount": 2
    }

This is a format similiar to a `Dictionary`. It contains keys (cellData, columnCount, and rowCount) which map to values.
*/
/*
From the above representation, the resulting maze would look like this...
⬛️⬛️⬛️⬛️⬛️⬛️
⬛️◻️⬛️⬛️◻️⬛️
⬛️◻️⬛️⬛️◻️⬛️
⬛️◻️⬛️⬛️◻️⬛️
⬛️◻️◻️◻️◻️⬛️
⬛️⬛️⬛️⬛️⬛️⬛️
*/

/*: 
On the next page, we will write some code to visualize a maze that we load from a PList.
*/
//: [Next](@next)
