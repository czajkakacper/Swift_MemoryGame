//
//  MemoGameViewModel.swift
//  MemoryGame
//
//  Created by student on 05/11/2024.
//

import SwiftUI

class MemoGameViewModel: ObservableObject {
	private static let tab1 = ["😊", "😅", "😍", "😂", "🫠", "🙂", "😇", "🥰", "😉", "🤪"]
	private static let tab2 = ["🌟", "✨", "🎉", "🎊", "🎈", "🎆", "🎇", "🌈", "🎶", "🎵"]
	private static let tab3 = ["💖", "💔", "💞", "💓", "💘", "💗", "💕", "💌", "🌹", "🌺"]

	func choose(_ card: MemoGameModel<String>.Card){
		model.choose(card)
	}
	
	func schuffle(){
		model.shuffle()
	}
}

