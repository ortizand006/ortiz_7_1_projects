//
//  FirstViewController.swift
//  DoubleApp
//
//  Created by student on 7/3/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var userInput: UITextField!
    
    @IBAction func calculate(_ sender: Any) {
        let userInputString = userInput.text!
        let userInputNum = Int(userInputString)!
        
        let sum = userInputNum * 7
        results.text = String(sum)
        
    }
    @IBOutlet weak var results: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

