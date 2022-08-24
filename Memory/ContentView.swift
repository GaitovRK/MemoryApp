//
//  ContentView.swift
//  Memory
//
//  Created by Rashid Gaitov on 10.08.2022.
//

import SwiftUI


struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            
            if card.isFaceUp {
                shape.fill(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill(.red)
                }
            }
    }
}


struct ContentView: View {
    let game: EmojiMemoryGame
    @State var emojiCount = 10

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 75, maximum: 200))]) {
                ForEach(game.cards) { card in
                    CardView(card: card).aspectRatio(2/3, contentMode: .fit)
                }
            }
            .foregroundColor(.red)
        }
        .padding(.horizontal)
        .font(.largeTitle)
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(game: game)
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portraitUpsideDown)
        ContentView(game: game)

    }
}
