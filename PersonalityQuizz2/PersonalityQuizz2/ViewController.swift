//
//  ViewController.swift
//  PersonalityQuizz2
//
//  Created by Adrien Meyer on 25/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBAction func moveToSecondeScreen(_ sender: Any) {
        performSegue(withIdentifier: "second", sender: nil)
    }
    
}

