//
//  Player.swift
//  BlackJack
//
//  Created by Liubov Kaper  on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Player {
    var score: Int
    var cards:[Card]
    var playerName: String 
    
    init (score: Int, cards: [Card], playerName: String){
        self.score = score
        self.cards = cards
        self.playerName = playerName
    }
}
