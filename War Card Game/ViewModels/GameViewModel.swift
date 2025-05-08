//
//  GameViewModel.swift
//  War Card Game
//
//  Created by I O N Groups Pvt Ltd on 2025-05-09.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    @Published var game = CardGame()
    
    var playerCardImage: String {
        "card\(game.playerCard)"
    }
    
    var cpuCardImage: String {
        "card\(game.cpuCard)"
    }
    
    func deal() {
        game.playerCard = Int.random(in: 2...14)
        game.cpuCard = Int.random(in: 2...14)
        
        if game.playerCard > game.cpuCard {
            game.playerScore += 1
        } else if game.cpuCard > game.playerCard {
            game.cpuScore += 1
        }
    }
}

