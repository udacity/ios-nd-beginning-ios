//: [Previous](@previous)
/*:
## Copy-Paste is a Waste
*/
//: ### Exercise: Reduce Repeated Code
var dog = "corgi"
var holdingOwnLeashInMouth = true
var points = 0

if dog == "terrier" {
    print("I saw a terrier! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "kavkazskaya ovcharka" {
    print("I saw a kavkazskaya ovcharka! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "labrador" {
    print("I saw a labrador! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "shiba inu" {
    print("I saw a shiba inu! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "corgi" {
    print("I saw a corgi! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "bear" {
    print("Print that wasn't a dog at all! Nice try.")
}
//: [Next](@next)
