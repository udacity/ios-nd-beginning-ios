import Foundation

//Exercise
//
//*Write a while loop which  prints the values from 1-10 (and then exits!).*

var i = 1
while (i <= 10) {
    print(i)
    i += 1
}


//Write a while loop that continuously flips a coin, and stops when there are two tails in a row.

var isTails = false
while (true) {
    let flip  = arc4random() % 2
    if flip == 1 {
        if isTails {
            break
        }
    }
    isTails = flip == 1
}