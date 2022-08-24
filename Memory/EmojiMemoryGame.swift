//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Rashid Gaitov on 13.08.2022.
//

import Foundation

class EmojiMemoryGame {
    static var emojis = ["🐨", "🐰", "🐶", "🐯", "🐮", "🐷", "🦊", "🐱", "🐹", "🐼", "🐸", "🐵", "🐔", "🐧", "🐡", "🪲", "🐠", "🐊", "🦬", "🐿"]
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairs: 4) { index in
            emojis[index]
        }
    }
    
    var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
