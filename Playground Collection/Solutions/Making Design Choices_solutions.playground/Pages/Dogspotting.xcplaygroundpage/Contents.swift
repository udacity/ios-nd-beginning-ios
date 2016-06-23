//I have removed repeated code from the Dogspotting example.

var dog = "corgi"
var holdingOwnLeashInMouth = true
var points = 0

for dogName in ["terrier", "kavkazskaya ovcharka", "labrador", "shiba inu", "corgi"] {
    if dog == dogName {
        print("I saw a \(dogName)! +1")
        points += 1
        if holdingOwnLeashInMouth {
            print("Ronin bonus! +4")
            points += 4
        }
    } else if dog == "bear" {
        print("Print that wasn't a dog at all! Nice try.")
    }
}
