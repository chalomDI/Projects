//
//  GameState.swift
//  exercize 20a
//
//  Created by Adrien Meyer on 16/11/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import Foundation


enum GameState {
    case start
    case win
    case lose
    case draw
    
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
            
        case .win:
            return "You Won!"
            
        case .lose:
            return "You Lost!"
            
        case .draw:
            return "It's a Draw!"
        }
}
    
}
