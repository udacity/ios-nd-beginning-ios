//: ## Operators in Playgrounds
var gamePoints = 1000
var numberOfLives = 3
var numberOfDeaths = 0

let pointsPerLife = 100
let pointsPerDeath = 300

// Note: I made randomBonus always return 20.

var totalPoints = gamePoints + numberOfLives * pointsPerLife - numberOfDeaths * pointsPerDeath + randomBonus(from: 0, to: 100)

var lifeBonus = --numberOfLives * pointsPerLife

var deathBonus = ++numberOfDeaths * pointsPerDeath

var newTotalPoints = gamePoints + lifeBonus - deathBonus + randomBonus(from: 0, to: 100)

numberOfLives
numberOfDeaths

var ultraNewLifeBonus = numberOfLives-- * pointsPerLife

var ultraNewDeathBonus = numberOfDeaths++ * pointsPerDeath

var ultraNewTotalPoints = gamePoints + ultraNewLifeBonus - ultraNewDeathBonus + randomBonus(from: 0, to: 100)

numberOfLives
numberOfDeaths

//: Increment/Decrement Position Effects Order
var num = 1

// afterExample is assigned a value BEFORE num is incremented to 2
var afterExample = num++

afterExample
num

// beforeExample is assigned a value AFTER num is incremented to 3
var beforeExample = ++num

beforeExample
num
//: [Next](@next)
