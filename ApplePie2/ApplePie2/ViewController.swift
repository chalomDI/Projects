//
//  ViewController.swift
//  ApplePie2
//
//  Created by Adrien Meyer on 16/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func newRound() {
        if !listOfWords.isEmpty{
            let newWord = listOfWords.removeFirst()
            
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessLetter: [])
            enableLetterButtons(true)
            updateUI()
        } else {
            enableLetterButtons(false)
        }
    }
    
    
    func enableLetterButtons(_ enable: Bool) {
            for button in letterButton {
                button.isEnabled = enable
            }
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var listOfWords = ["oui", "connard", "salaud","juif","adolf"]
    let incorrectMovesAllowed = 7
    var totalWin = 0 {
        didSet {
            newRound()
        }
    }
    var totalLoose = 0{
        didSet {
            newRound()
        }
    }
    var currentGame: Game!
    
    @IBOutlet var letterButton: [UIButton]!
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func buttonTaped(_ sender: UIButton){
        sender.isEnabled = false
        let letterString = sender.title(for:.normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        upDateGameState()
    }
    
    func upDateGameState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLoose += 1
        } else if currentGame.word == currentGame.formattedWord{
            totalWin += 1
        } else {
            updateUI()
        }
    }

    
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWin), Losses: \(totalLoose)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }


}

