//
//  AddVC.swift
//  EmojiDictionnary
//
//  Created by Adrien Meyer on 28/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class AddVC: BaseViewController {

   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ViewController{
            let vc = segue.destination as? ViewController
            
            vc?.emojis = sender as! [Emoji]
            
        }
    }
    
    @IBOutlet weak var symbolTxtField: UITextField!
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var descriptionTxtField: UITextField!
    @IBOutlet weak var usageTxtField: UITextField!

    
    @IBAction func save(_ sender: Any) {
        var newitem: [Emoji] = []
        var info = Emoji
        
        guard let symbol = symbolTxtField.text,
         let name = nameTxtField.text,
         let description = descriptionTxtField.text,
         let usage = usageTxtField.text else {return}
        
        info = Emoji(symbol: Character(symbol), name: name , description: description, usage: usage)
        
        newitem.append(info)
        
        
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
