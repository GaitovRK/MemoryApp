//
//  MemoryGame.swift
//  Memory
//
//  Created by Rashid Gaitov on 13.08.2022.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ : Card) {
        
    }

    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }

}
