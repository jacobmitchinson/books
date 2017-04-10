//: Playground - noun: a place where people can play

import UIKit

// Clean Code in Swift is summary of Clean Code using Swift instead of Java

// 3. Functions

class Player {}

class Game {

    var players:[Player]?
    
    func addPlayer(player:Player) {
        players?.append(player)
    }
    
}


