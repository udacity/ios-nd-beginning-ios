//: [Previous](@previous)

//: __Problem 1__
//:
//: __1a.__
//: Write an enum to represent the five fingers on a human hand.
//:
//: __1b.__
//: Assign a rawValue of type Int to each finger.

//: __Problem 2__
//: 
//: Finish the commented switch statement below by writing a case for each season. In each executable statement define the variable `favoriteActivity` to be your favorite activity during a given season.

enum Season {
    case fall
    case winter
    case spring
    case summer
}

var myFavoriteSeason = Season.fall
var favoriteActivity = ""

//switch (myFavoriteSeason) {
//    // TODO: Fill in cases for the 4 seasons in the enum above
//}

//: __Problem 3__
//: 
//: __3a.__ Assign rawValues to each member of the enum, Weather. The rawValue should be a string indicating the appropriate accessory or attire for that weather. For, example, `case Snow = "parka"`.

enum Weather {
    case rain
    case sun
    case snow
    case wind
}

//: __3b.__ Using string interpolation and one of the rawValues you just assigned, recreate this reminder for a friend who is headed out into the elements.

// TODO: Assign the current weather outside to the variable, currentWeather. 
var currentWeather = Weather.wind

// TODO: Replace "jacket" with string interpolation of a raw value
var reminder = "Don't forget your jacket!"

//: [Next](@next)
