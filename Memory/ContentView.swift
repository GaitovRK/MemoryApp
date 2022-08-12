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
    @State var emojiCount = 8

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

            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.square")
        }
    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.app")
        }
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            CardRow()
//            CardRow()
//            CardRow()
//            CardRow()
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
