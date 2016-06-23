//: If, Else-If Exercise: Triathlon training

import UIKit

// Here is a class to represent the triathlete in training.
class Trainee {
    let name: String
    var canFinishSwim: Bool
    var canFinishBike: Bool
    var canFinishRun: Bool
    
    init(name: String, canFinishSwim: Bool, canFinishBike: Bool, canFinishRun: Bool) {
        self.name = name
        self.canFinishSwim = canFinishSwim
        self.canFinishBike = canFinishBike
        self.canFinishRun = canFinishRun
    }
}

// Here we will instantiate and initialize a couple of trainees.
var athlete1 = Trainee(name: "Kurt", canFinishSwim: false, canFinishBike: true, canFinishRun: true)
var athlete2 = Trainee(name: "Teresa", canFinishSwim: true, canFinishBike: true, canFinishRun: true)

func checkTrainingStatus (triathleteInTraining: Trainee) {
    if !triathleteInTraining.canFinishRun {
        print("Try going for longer runs the next two weekends.")
    }
        
    else if !triathleteInTraining.canFinishBike {
        print("Time to put some more miles on that bike!")
    }
        
    else if !triathleteInTraining.canFinishSwim {
        print ("Try spending a little more time in the pool.")
    }
        
    else {
        print("You're ready for the race! Good luck! ")
    }
}

checkTrainingStatus(athlete1)
checkTrainingStatus(athlete2)
