//
//  ContentView.swift
//  Memory
//
//  Created by Rashid Gaitov on 10.08.2022.
//

import SwiftUI


struct CardView: View {
    @State var isFaceUp = true
    var content: String
    var body: some View {
    ZStack {
        let shape = RoundedRectangle(cornerRadius: 25.0)
        
        if isFaceUp {
            shape.fill(.white)
            shape.strokeBorder(lineWidth: 3)
            Text(content).font(.largeTitle)
        } else {
            shape.fill(.red)
            }
        }
    .onTapGesture {
        isFaceUp = !isFaceUp
    }
    }
}

struct CardRow: View {
    var emojis = ["🐨", "🐰", "🐶", "🐯", "🐮", "🐷", "🦊", "🐱", "🐹", "🐼", "🐸", "🐵", "🐔", "🐧"]
    @State var emojiCount = 10

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75, maximum: 200))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self, content: { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    })
                }
                .foregroundColor(.red)
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
    }
    
    
}


struct ContentView: View {
    var body: some View {
        VStack {
            CardRow()
        }
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portraitUpsideDown)
        ContentView()

    }
}
