//
//  ViewController.swift
//  Your Friend App
//
//  Created by student on 7/1/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screen: UILabel!
    
    @IBAction func hiButton(_ sender: Any) {
        screen.text = "Hello fellow commrad. We must bring glory to the Motherland!"
    }
    
    @IBAction func byeButton(_ sender: Any) {
        screen.text = "Goodbye my fellow commrad. Go on and spread the Communist Manifesto."
    }
    
    @IBAction func reset(_ sender: Any) {
        screen.text = "Glory to Motherland!"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

