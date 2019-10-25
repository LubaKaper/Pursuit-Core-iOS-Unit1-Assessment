//
//  Game.swift
//  BlackJack
//
//  Created by Liubov Kaper  on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct Game {
    var deck = [Card]()
    var player = Player(score: 0, cards: [], playerName: "luba")
    var hitPlayer = true
    var score = 0
    
    var rangeForRandomComputerScore = (18...21)
    var hasMoreCards: Bool {
        return !deck.isEmpty// not empty
    }
    var randomComputerScore: Int {
        return rangeForRandomComputerScore.randomElement() ?? 19
       }

func newGame() {
    
}

//    stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
    
    func stopHits(userAnswer: String) -> Int {
        if userAnswer == "pass" {
            if player.score > randomComputerScore {
                print("You WIN!! your score is \(player.score) and computer score is \(randomComputerScore)")
            } else if player.score < randomComputerScore {
                print("You Lost :( your score is \(player.score) and computer score is \(randomComputerScore)")
            }
        }
    return randomComputerScore
}

//    hitMe() called as the user requests more cards from the deck
    
    mutating func hitMe(userAnswer: String) -> Card? {
        if userAnswer == "hit" {
        deck = deck.shuffled()
        }
        return deck.popLast()
}
//    gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
    func gameStatus(userScore:Int, newCard:[Card]) {
//        var currentScore = 0
//        var playersCurrentCards = player.cards
//        Card.newDeck(aceValue: <#T##Int#>)
    }
}
