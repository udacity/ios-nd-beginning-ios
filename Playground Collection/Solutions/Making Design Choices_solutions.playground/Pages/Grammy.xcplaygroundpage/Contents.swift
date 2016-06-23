var isAboutToRetire = false
var isCriticallyAcclaimed = false
var hasBestSellingRecord = true
var wonAGrammyBefore = false

var percentageOddsOfGrammyWin = 0
if isAboutToRetire && (isCriticallyAcclaimed || hasBestSellingRecord) && hasBestSellingRecord {
    percentageOddsOfGrammyWin = 80
} else if isAboutToRetire && !hasBestSellingRecord {
    percentageOddsOfGrammyWin = 70
} else if !isAboutToRetire && isCriticallyAcclaimed && hasBestSellingRecord {
    percentageOddsOfGrammyWin = 50
} else if !isAboutToRetire && !wonAGrammyBefore {
    percentageOddsOfGrammyWin = 40
} else if isAboutToRetire || wonAGrammyBefore || hasBestSellingRecord || isCriticallyAcclaimed {
    percentageOddsOfGrammyWin = 35
} else {
    percentageOddsOfGrammyWin = 1
}

//I have edited the Grammy prediction code so it is simpler to read.
//////////////////////


percentageOddsOfGrammyWin = 1
if isAboutToRetire {
    if hasBestSellingRecord {
        percentageOddsOfGrammyWin = 80
    } else if !hasBestSellingRecord {
        percentageOddsOfGrammyWin = 70
    } else if wonAGrammyBefore || isCriticallyAcclaimed {
        percentageOddsOfGrammyWin = 35
    }
} else {
    if isCriticallyAcclaimed && hasBestSellingRecord {
        percentageOddsOfGrammyWin = 50
    } else if !wonAGrammyBefore {
        percentageOddsOfGrammyWin = 40
    }
}