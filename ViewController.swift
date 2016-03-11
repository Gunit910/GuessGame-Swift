//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Guneet on 2016-03-11.
//  Copyright © 2016 Guneet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuessTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
    
        
        let diceRoll = String(arc4random_uniform(6))  // we need a random number between 0 and 5, therefore we have put 6
        
        if diceRoll == userGuessTextField.text {
            resultLabel.text = "You are right"
            
        }else {
            resultLabel.text = "Wrong! It was " + diceRoll
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

