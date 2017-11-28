//
//  ViewController.swift
//  TableViewProject
//
//  Created by Mac on 28/11/2017.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var eleves : Array = ["gab", "david", "ethan", "colin"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return eleves.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        print(indexPath.row)
        cell.textLabel?.text = eleves[indexPath.row]
        return cell
    }
}

