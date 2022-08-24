//
//  MemoryGame.swift
//  Memory
//
//  Created by Rashid Gaitov on 13.08.2022.
//

import Foundation
import SwiftUI


struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }

    
    init(numberOfPairs: Int, createCardContent: (Int) -> CardContent) {
        for index in 0..<numberOfPairs {
            let content: CardContent = createCardContent(index)
            cards.append(Card(content: content, id: index * 2))
            cards.append(Card(content: content, id: index * 2 + 1))
        }
    }
    
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
