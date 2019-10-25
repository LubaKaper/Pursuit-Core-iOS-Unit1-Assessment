//
//  Game.swift
//  BlackJack
//
//  Created by Liubov Kaper  on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    var deck = [Card]()
    var player = Player(score: 0, cards: [], playerName: "luba")
    var hitPlayer = true
    // var score = 0
    
    var rangeForRandomComputerScore = (18...21)
    
    var hasMoreCards: Bool {
        return !deck.isEmpty// not empty
    }
    var randomComputerScore: Int {
        return rangeForRandomComputerScore.randomElement() ?? 19
    }
    
    func newGame() {
        deck = Card.newDeck(aceValue: 1 )
        print("Do You Want To Hit Or Pass? ")
    }
    
    //    stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
    
    func stopHits(userAnswer: String) -> Int {
        if userAnswer == "pass" {
            if player.score > randomComputerScore {
                print("You WIN!! your score is \(player.score) and computer score is \(randomComputerScore)")
                print("Would you like to play another round?")
            } else if player.score < randomComputerScore {
                print("You Lost :( your score is \(player.score) and computer score is \(randomComputerScore)")
                print("Would you like to play another round?")
            } else if player.score == randomComputerScore {
                print("It's a Tie! Your score \(player.score) and computer score \(randomComputerScore) are equal!")
            }
        }
        return randomComputerScore
    }
    
    //    hitMe() called as the user requests more cards from the deck
    
    func hitMe(userAnswer: String) -> Card? {
        if userAnswer == "hit" {
            deck = deck.shuffled()
        }
        
        let card = deck.popLast()
        
        print(card?.stringify() ?? 0)
        player.score += card?.value ?? 0
        print("your score is \(player.score)")
        return card
    }
    //    gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
    func gameStatus() -> Bool {
        var gameIsOver = game.hasMoreCards
        if player.score == 21 {
            print("BlackJack! You Win!")
            //print("Would you like to play another round?")
            gameIsOver = false
        }
            
        else if player.score > 21 {
            print("Bust! You loose:(")
            //print("Would you like to play another round YES or NO?")
            gameIsOver = false
        } else {
            gameIsOver = true
        }
//        game.stopHits(userAnswer: " ") {
//            gameIsOver = false
//        }
        return gameIsOver
    }
    
    func reset() {
        player.score = 0
        
    }
}


