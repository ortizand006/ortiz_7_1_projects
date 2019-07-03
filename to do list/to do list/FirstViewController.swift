//
//  FirstViewController.swift
//  to do list
//
//  Created by student on 7/2/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    var taskList: [String] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let itemObject = UserDefaults.standard.object(forKey: "taskList")
        
        if let tempTask = itemObject as?
            [String] {
            taskList = tempTask
        }
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            taskList.remove(at: indexPath.row)
            table.reloadData()
            UserDefaults.standard.set(taskList, forKey: "taskList")
        }
    }
    
    
    
    
    func tableView(  _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
}

    func tableView(  _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = taskList[indexPath.row]
        
        return cell
        
}

//active memory (flash) - quick, cheap memory that gets the job done
//Stored memory (hard drive) - cached memory (be careful on maintaining data, if there is not enough space,the app wont open)
}


