//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")


var rules = "This is BlackJack"
var game = Game()
var gameOver = false
repeat {
   
    print(rules)
    game.newGame()
     repeat {
        
        let userResponse = readLine() ?? " "
        if userResponse == "hit" {
            game.hitMe(userAnswer: userResponse)
        }
        // game.gameStatus()
        if userResponse == "pass" {
            game.stopHits(userAnswer: userResponse)
        }
        
       // game.gameStatus()
        
     } while game.hasMoreCards && game.gameStatus() == true
    
    print("Would you like to play anither round? Yes or No")
    let userPlayAgain = readLine() ?? " "
    if userPlayAgain == "yes" {
        // game.gameStatus()
        game.reset()
        gameOver = true
    }
    if userPlayAgain == "no" {
        gameOver = false
    }
} while gameOver
// gameStatus should return a Bool to say whether or not the game is over
/*
  if !game.gameStatus() {
    // ask user if they want to continue playing
    if yes {
      game.reset
      gameOver = true
    }
  }
*/
