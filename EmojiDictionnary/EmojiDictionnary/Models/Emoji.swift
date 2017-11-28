//
//  Emoji.swift
//  EmojiDictionnary
//
//  Created by Adrien Meyer on 28/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import Foundation

class Emoji: CustomStringConvertible {
    
    let emo = [Emoji]()

    var symbol: Character
    var name: String
    var description: String
    var usage: String
    init(symbol: Character, name: String, description: String, usage: String){
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage

    }
}

