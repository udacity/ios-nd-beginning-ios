//: ## Switch Statement Exercises
//: Below there are three if, else-if statements. Notice that they each handle multiple cases of one condition. Rewrite each if, else-if statement as a switch statement instead.

//: ### Exercise 1
//: Below is an if, else-if statement which determines what team to cheer for conditioning on the sport being played.
enum Sport {
    case baseball, basketball, americanFootball, hockey, soccer
}

var sport = Sport.baseball

if sport == .baseball {
    print("Go A's!")
} else if sport == .basketball {
    print("Go Warriors!")
} else if sport == .americanFootball {
    print( "Go Raiders!")
} else if sport == .hockey {
    print("Go Sharks!")
} else if sport == .soccer {
    print("Go Earthquakes!")
} else {
    print("Go Team!")
}

// Solution
switch sport {
case .baseball:
    print("Go A's!")
case .basketball:
    print("Go Warriors!")
case .americanFootball:
    print("Go Raiders!")
case .hockey:
    print("Go Sharks!")
case .soccer:
    print("Go Earthquakes")
// In cases such as these, we no longer have to provide a default case because the compiler can detect that it would never be executed.
//default:
//    print("Go Team!")
}

//: ### Exercise 2
//: Below is an if, else-if statement matching an assignment score to a letter grade.
var score = 97
var letterGrade = ""

if 90...100 ~= score {
    letterGrade = "A"
} else if 80...89 ~= score {
    letterGrade = "B"
} else if 70...79 ~= score {
    letterGrade = "C"
} else if 60...69 ~= score {
    letterGrade = "D"
} else {
    letterGrade = "Incomplete"
}

// Solution
switch score {
case 90...100:
    letterGrade = "A"
case 80...89:
    letterGrade = "B"
case 70...79:
    letterGrade = "C"
case 60...69:
    letterGrade = "D"
default:
    letterGrade = "Incomplete"
}

//: ### Exercise 3
//: Below is an if, else-if statement matching birthyears to the years of the Chinese zodiac.

var birthYear = 1992

if birthYear == 1992 || birthYear == 1980 || birthYear == 1968 {
    print("You were born in the year of the monkey.")
} else if birthYear == 1991 || birthYear == 1979 || birthYear == 1967 {
    print("You were born in the year of the goat")
} else {
    print("You were born in the year of some other animal.")
}

// Solution
switch birthYear {
case 1992, 1980, 1968:
    print("You were born in the year of the monkey.")
case 1991, 1979, 1967:
    print("You were born in the year of the goat")
default:
    print("You were born in the year of some other animal.")
}
