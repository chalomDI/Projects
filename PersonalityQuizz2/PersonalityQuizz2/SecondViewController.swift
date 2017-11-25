//
//  SecondViewController.swift
//  PersonalityQuizz2
//
//  Created by Adrien Meyer on 25/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {
    
    @IBOutlet weak var sleeping: UISwitch!
    @IBOutlet weak var running: UISwitch!
    @IBOutlet weak var eating: UISwitch!
    @IBOutlet weak var fighting: UISwitch!
    @IBOutlet weak var noise: UISwitch!
    
    @IBOutlet var result: UILabel!
    
    
    @IBAction func submit(_ sender: Any) {
         performSegue(withIdentifier: "result", sender: nil)
        
        if eating.isOn{
            if running.isOn{
                if sleeping.isOn{
                    if fighting.isOn{
                        if noise.isOn{
                            result.text = "Congratulation, you are a 🐶"
                        }
                        result.text = "Congratulation, you are a 🐻"
                    }
                    result.text = "Congratulation, you are a 🐱"
                }
            }
            result.text = "Congratulation, you are a 🦁"
        }
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        myVC.stringPassed = result.text!
        navigationController?.pushViewController(myVC, animated: true)
        
       
    }
    
}
