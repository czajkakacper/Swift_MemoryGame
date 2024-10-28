//
//  CardView.swift
//  MemoryGame
//
//  Created by student on 22/10/2024.
//

import SwiftUI

struct CardView: View {
    @State var isReverse: Bool = false
    var emoji: String
    var body: some View {
        ZStack{
            Group{
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.blue, lineWidth: 6)
                if isReverse {
                    Text(emoji)
                        .font(.largeTitle)
                        .opacity(isReverse ? 1 : 0)
                } else {
                    Text("")
                }
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.blue)
                    .opacity(isReverse ? 0 : 1)

            }
        }
        .onTapGesture {
            withAnimation {
                isReverse.toggle()
            }
        }
        .frame(width: 100, height: 100)
        .padding(.top, 10)
    }
}

#Preview {
    CardView(emoji: "👻")
}
