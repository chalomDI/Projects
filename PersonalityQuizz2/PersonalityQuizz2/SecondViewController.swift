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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ResultViewController{
            let vc = segue.destination as? ResultViewController
            
            vc?.stringPassed = sender as? String
            
//            if eating.isOn {
//                vc?.stringPassed = "Congratulation, you are a 🐤"
//            } else if running.isOn{
//                vc?.stringPassed = "Congratulation, you are a 🐶"
//            } else if sleeping.isOn{
//                 vc?.stringPassed = "Congratulation, you are a 🐻"
//            }else if fighting.isOn{
//                 vc?.stringPassed = "Congratulation, you are a 🐱"
//
//            }else if noise.isOn{
//                vc?.stringPassed = "Congratulation, you are a 🦁"
//            } else {
//                vc?.stringPassed = "You're not an\n animal i guess..."
//        }
    }
    }
    
    
    @IBAction func submit(_ sender: Any) {
        
        var stringPassed: String = ""
        
        if eating.isOn {
            stringPassed = "Congratulation, you are a 🐤"
        } else if running.isOn{
            stringPassed = "Congratulation, you are a 🐶"
        } else if sleeping.isOn{
            stringPassed = "Congratulation, you are a 🐻"
        }else if fighting.isOn{
            stringPassed = "Congratulation, you are a 🐱"
            
        }else if noise.isOn{
            stringPassed = "Congratulation, you are a 🦁"
        } else {
            stringPassed = "You're not an\n animal i guess..."
        }
        
        
         performSegue(withIdentifier: "result", sender: stringPassed)
        }

}

