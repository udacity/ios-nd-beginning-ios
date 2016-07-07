//: [Previous](@previous)

//: __Probem 1__
//:
//: __1a.__
//: Write an enum to represent the five fingers on a human hand.
//:
//: __1b.__
//: Assign a rawValue of type Int to each finger.
// Solution
enum Finger: Int {
    case thumb, index, middle, ring, pinky
}

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

//Solution
switch (myFavoriteSeason) {
case .fall:
    favoriteActivity = "watching the leaves change color."
case .winter:
    favoriteActivity = "skiing."
case .spring:
    favoriteActivity = "seeing the wildflowers bloom"
case .summer:
    favoriteActivity = "swimming in the river"
}
//: __Problem 3__
//:
//: __3a.__ Assign rawValues to each member of the enum, Weather. The rawValue should be a string indicating the appropriate accessory or attire for that weather. For, example, `case Snow = "parka"`.
// Solution
enum Weather: String {
    case rain = "umbrella"
    case sun = "sunglasses"
    case snow = "parka"
    case wind = "jacket"
}

//: __3b.__ Using string interpolation and one of the rawValues you just assigned, recreate this reminder for a friend who is headed out into the elements.
var currentWeather = Weather.sun

// Solution
var reminder = "Don't forget your \(currentWeather.rawValue)!"
