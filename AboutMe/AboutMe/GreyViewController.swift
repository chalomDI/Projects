//
//  GreyViewController.swift
//  AboutMe
//
//  Created by Adrien Meyer on 21/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class GreyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
// Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var boutton: UIButton!
    
    
    
    @IBOutlet weak var switchXP: UISwitch!
    
    @IBAction func Changename(_ sender: Any) {
        if switchXP.isOn {
            boutton.setTitle("Experience", for: .normal)
        } else {
            boutton.setTitle("Formation", for: .normal)
        }
    }
    
    
    
    @IBAction func switchScreen(_ sender: Any) {
        if switchXP.isOn {
            performSegue(withIdentifier: "xpSegue", sender: nil)
        } else {
            performSegue(withIdentifier: "formationSegue", sender: nil)
        }
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
