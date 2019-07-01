//
//  ViewController.swift
//  egggggg
//
//  Created by student on 7/1/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var isRunning = false
    var clock = 360
    
    @objc func runTimer() {
        if clock > 0 {
            clock -= 1
            screen.text = String(clock)
        }
    }
    
    @IBAction func pause(_ sender: Any) {
        if !isRunning {
            timer.invalidate()
            isRunning = false    }
    }
        
    @IBAction func play(_ sender: Any) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.runTimer), userInfo: nil, repeats: true)
        }
        }
    
    @IBAction func minusTen(_ sender: Any) {
        if clock >= 10 {
        clock -= 10
            screen.text = String(clock)
        }
    }
    
    @IBAction func plusTen(_ sender: Any) {
        clock += 10
        screen.text = String(clock)
    }
    
    @IBAction func reset(_ sender: Any) {
        clock = 360
        screen.text = String(clock)
    }
    
    @IBOutlet weak var screen: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        screen.text = String(clock)
    }


}

