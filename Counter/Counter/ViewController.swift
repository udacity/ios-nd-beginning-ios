//
//  ViewController.swift
//  Counter
//
//  Created by Alan on 9/2/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Properties
    
    var counterModel: CounterModel = CounterModel()
    
    // MARK: Outlets
    
    @IBOutlet weak var increment: UIButton!
    @IBOutlet weak var decrement: UIButton!
    @IBOutlet weak var counterValue: UILabel!
    
    // MARK: Controller Functions
    
    @IBAction func didIncrement(_ sender: AnyObject) {
        counterModel.increment()
        updateViewLayer()
    }
    
    @IBAction func didDecrement(_ sender: AnyObject) {
        counterModel.decrement()
        updateViewLayer()
    }
    
    func updateViewLayer() {
        counterValue.text = "\(counterModel.value)"
    }
}

