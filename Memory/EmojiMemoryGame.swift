//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Rashid Gaitov on 13.08.2022.
//

import Foundation

class EmojiMemoryGame {
    var model = MemoryGame<String>(numberOfPairs: 4, createCardContent: <#T##(Int) -> _#>)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
