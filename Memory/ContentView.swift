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
            shape.stroke(lineWidth: 3)
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
    var emojis = ["🐨", "🐰", "🐶", "🐯", "🐮", "🐷", "🦊", "🐱", "🐹", "🐼", "🐸", "🐵"]
    @State var emojiCount = 4

    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self, content: { emoji in
                    CardView(content: emoji)
                })
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
        .foregroundColor(.red)
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
        ContentView()

    }
}
