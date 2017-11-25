//
//  ResultViewController.swift
//  PersonalityQuizz2
//
//  Created by Adrien Meyer on 25/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var results: UILabel!
    
    var stringPassed = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        results.text = stringPassed
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
