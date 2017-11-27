//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Adrien Meyer on 27/11/2017.
//

import Foundation


struct Athlete {
    
    let name: String
    let age: String
    let league: String
    let team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}

