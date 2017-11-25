//
//  ViewController.swift
//  exercize 20a
//
//  Created by Adrien Meyer on 16/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stupidHuman: UILabel!
    
    @IBOutlet weak var topMost: UIButton!
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var rock: UIButton!
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var play: UIButton!
    
    @IBAction func playRock(_ sender: Any) {
        play(.rock)
    }
    @IBAction func playScissors(_ sender: Any) {
        play(.scissors)
    }
    
    @IBAction func playPaper(_ sender: Any) {
    play(.paper)
    }
    
    @IBAction func stupid(_ sender: Any) {
        stupidHuman.text = "Don't press me idiot"
        topMost.setTitle("💩", for: .normal)
    }
    
    @IBAction func playAgain(_ sender: Any) {
 letsPlay(gamerstate: .start)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        letsPlay(gamerstate: .start)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func play(_ playerSign: Sign) {
        let opponentSign = randomSign()
        let gameState = playerSign.gameState(versusSign: opponentSign)
        letsPlay(gamerstate: gameState)

        topMost.setTitle(opponentSign.textValue, for: .normal)

        

        rock.isEnabled = false
        rock.isHidden = true
        
        paper.isEnabled = false
        paper.isHidden = true
        
        scissors.isEnabled = false
        scissors.isHidden = true
        
        switch playerSign {
        case .paper:
            paper.isHidden = false
        case .rock:
            rock.isHidden = false
        case .scissors:
            scissors.isHidden = false
        }
        score.isHidden = false
        play.isHidden = false
    }
    
    var totalWin = 0 {
        didSet {
            letsPlay(gamerstate: .start)
        }
    }
    
    var totalLoose = 0{
        didSet {
            letsPlay(gamerstate: .start)
        }
    }
    
    var totalDraw = 0{
        didSet {
            letsPlay(gamerstate: .start)
        }
    }
    
    
    func gameStats() {
        
        score.text = "Wins: \(totalWin), Losses: \(totalLoose), Draw: \(totalDraw)"
    }
  
    @IBOutlet weak var reset: UIButton!
    
    @IBAction func Reset(_ sender: Any) {
        totalDraw = 0
        totalWin = 0
        totalLoose = 0
        status.text = "Rock Paper Scissors"
        view.backgroundColor = UIColor.white
        
    }
    
    func letsPlay(gamerstate: GameState){
        var turnNumber = 0
        
        gameStats()
        switch gamerstate {
            
        case .start:
            topMost.setTitle("🤖", for: .normal)
            gameStats()
            stupidHuman.text = ""
            play.isHidden = true
            score.isHidden = true
            reset.isHidden = false
            paper.isEnabled = true
            paper.isHidden = false
            
            scissors.isEnabled = true
            scissors.isHidden = false
            
            rock.isEnabled = true
            rock.isHidden = false

        case .win:
            reset.isHidden = true
            status.text = gamerstate.status
            view.backgroundColor = UIColor.green
            totalWin += 1
            turnNumber += 1
            
        case .lose:
            status.text = gamerstate.status
            view.backgroundColor = UIColor.red
            totalLoose += 1
            turnNumber += 1
            
        case .draw:
            status.text = gamerstate.status
            view.backgroundColor = UIColor.white
            totalDraw += 1
            turnNumber += 1
        }
        
    }

}

