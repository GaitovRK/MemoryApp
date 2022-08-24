//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Rashid Gaitov on 13.08.2022.
//

import Foundation

class EmojiMemoryGame {
    var emojis = ["🐨", "🐰", "🐶", "🐯", "🐮", "🐷", "🦊", "🐱", "🐹", "🐼", "🐸", "🐵", "🐔", "🐧", "🐡", "🪲", "🐠", "🐊", "🦬", "🐿"]
    
    
    var model = MemoryGame<String>(numberOfPairs: 4) { <#Int#> in
        <#code#>
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
