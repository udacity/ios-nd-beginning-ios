//
//  CounterModel.swift
//  Counter
//
//  Created by Jarrod Parkes on 11/25/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

/// Used to count up or down.
struct CounterModel {
    /// Only this struct can adjust the value
    private(set) var value:Int = 0
    
    mutating func increment() {
        value += 1
    }
    
    mutating func decrement() {
        value -= 1
    }
}