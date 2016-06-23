//: [Previous](@previous)

//:If Statements Exercise: The Bouncer

// Here's the struct the represents the people who want to come in to the club
struct Clubgoer {
    var name: String
    var age: Int
    var onGuestList: Bool
    init(name: String, age:Int, onGuestList: Bool){
        self.name = name
        self.age = age
        self.onGuestList = onGuestList
    }
}

// Here are the people who want to come in.
var ayush = Clubgoer(name: "Ayush", age: 19, onGuestList: true)
var gabrielle = Clubgoer(name: "Gabrielle", age: 29, onGuestList: true)
var chris = Clubgoer(name: "Chris", age: 32, onGuestList: false)

func admit(person: Clubgoer) {
    print("\(person.name), come and party with us!")
}

func deny(person: Clubgoer) {
    print("Sorry, \(person.name), maybe you can go play Bingo with the Android team.")
}

func screen(person: Clubgoer) {
    // TODO: Add your if statement here!
}

func screenUnder21(person: Clubgoer) {
    // TODO: Add your if statement here!
}

//: [Next](@next)
