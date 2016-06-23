//
//  ViewController.swift
//  Counter
//
//  Created by Alan on 9/2/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var increment: UIButton!
    @IBOutlet weak var decrement: UIButton!
    @IBOutlet weak var counterValue: UILabel!
    
    var counterModel: CounterModel = CounterModel()
    
    // MARK - Controller functions
    
    @IBAction func didIncrement(sender: AnyObject) {
        counterModel.increment()
        updateViewLayer()
    }
    
    @IBAction func didDecrement(sender: AnyObject) {
        counterModel.decrement()
        updateViewLayer()
    }
    
    func updateViewLayer() {
        counterValue.text = "\(counterModel.value)"
    }
}

