//
//  Game.swift
//  ApplePie2
//
//  Created by Adrien Meyer on 16/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessLetter: [Character]
    
    mutating func playerGuessed(letter: Character){
        guessLetter.append(letter)
        
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
    
    var formattedWord: String{
        var guessedWord = ""
        for letter in word{
            if guessLetter.contains(letter){
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}
