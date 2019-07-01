//
//  ViewController.swift
//  Nav Demo1
//
//  Created by student on 7/1/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screen: UILabel!
    
    @IBAction func item3pressed(_ sender: Any) {
    }
    
    @IBAction func item2Pressed(_ sender: Any) {
    }
    
    @IBAction func item1Pressed(_ sender: Any) {
    }
    
    @IBAction func hiPressed(_ sender: Any) {
        screen.text = "Hello user"
    }
    
    @IBAction func cameraPressed(_ sender: Any) {
        screen.text = "Camera button pressed"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

