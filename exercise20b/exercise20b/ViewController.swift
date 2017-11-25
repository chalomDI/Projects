//
//  ViewController.swift
//  exercise20b
//
//  Created by Adrien Meyer on 18/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topSegmented: UISegmentedControl!
    
    let topChoices = [CaptionChoice(emoji: "🤯", caption:"You know what blow my mind ?"), CaptionChoice(emoji: "😍",caption: "You know what i love ?"), CaptionChoice(emoji : "🤨",caption: "That is weird")]
    
    let botChoice = [CaptionChoice(emoji: "✌️", caption:"Loosing my fingers"), CaptionChoice(emoji: "💀",caption: "Dying"), CaptionChoice(emoji : "🤦‍♂️",caption: "being surronded by idiots")]
    
    
    @IBOutlet weak var botSegmented: UISegmentedControl!
    
    @IBOutlet weak var topCaption: UILabel!
    
    @IBOutlet weak var botCaption: UILabel!
    
    @IBAction func SegmentedAction(_ sender: Any) {
        updateLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topSegmented.removeAllSegments()
        for choice in topChoices {
            topSegmented.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topSegmented.selectedSegmentIndex = 0
        
        botSegmented.removeAllSegments()
        for choice in botChoice {
            botSegmented.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
         botSegmented.selectedSegmentIndex = 0
        
        updateLabel()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabel() {
        let topIndex =
        topSegmented.selectedSegmentIndex
        let botIndex =
        botSegmented.selectedSegmentIndex
        
        topCaption.text = topChoices[topIndex].caption
        botCaption.text = botChoice[botIndex].caption
        
    }

}

