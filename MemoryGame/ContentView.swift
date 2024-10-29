//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 22/10/2024.
//

import SwiftUI

struct ContentView: View {
    var tab = ["😊", "😅", "🚀", "😂", "🐐", "🚀", "😊", "🐐", "😂", "😅"]
    @State var cards_num = 2
    
    var body: some View {
        VStack {
			
			Text("Memo")
				.font(.largeTitle)
				.padding()
			
            ScrollView{
                cardDisplay
            }
            HStack {
                adjustCardNumber(by: -2, symbol: "minus.square")
                    .disabled(cards_num <= 2)
                    .opacity(cards_num <= 2 ? 0.2 : 1)
                Spacer()
                adjustCardNumber(by: 2, symbol: "plus.square")
                    .disabled(cards_num >= tab.count)
                    .opacity(cards_num >= tab.count ? 0.2 : 1)
            }
            .padding()
            
        }
        .padding()
    }
    
    func adjustCardNumber(by offset: Int, symbol: String) -> some View {
        Button(action: {
            withAnimation {
                cards_num += offset
            }
        }) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundColor(.blue)
        }
    }
    
    var cardDisplay: some View {
        LazyVGrid(columns:  [GridItem(.adaptive(minimum: 120))]){
            ForEach(0..<cards_num, id: \.self){
                i in
                CardView(emoji: tab[i])
            }
        }
        .foregroundColor(.blue)
    }
}

#Preview {
    ContentView()
}
