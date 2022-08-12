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
    var emojis = ["🐨", "🐰", "🐶"]

    var body: some View {
        HStack {
            ForEach(emojis, id: \.self, content: { emoji in
                CardView(content: emoji)
            })
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            CardRow()
            CardRow()
            CardRow()
            CardRow()
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
