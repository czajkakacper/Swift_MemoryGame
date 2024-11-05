//
//  CardView.swift
//  MemoryGame
//
//  Created by student on 29/10/2024.
//

import SwiftUI

struct CardView: View {
	@State var isFaceUp = true
	var content: String
	var body: some View {
		ZStack {
			let base = RoundedRectangle(cornerRadius: 12)
			Group {
				base.fill(.white)
				base.strokeBorder(lineWidth: 2)
				Text(content).font(.system(size: 100))
					.minimumScaleFactor(0.01)
					.aspectRatio(contentMode: .fit)
			}
			.opacity(isFaceUp ? 1 : 0)
			base.fill().opacity(isFaceUp ? 0 : 1)
		}
		.onTapGesture(perform: {
			isFaceUp.toggle()
		})
	}
}
