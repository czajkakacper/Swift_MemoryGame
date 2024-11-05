//
//  MemoGameViewModel.swift
//  MemoryGame
//
//  Created by student on 05/11/2024.
//

import SwiftUI

class MemoGameViewModel: ObservableObject {
	private static let emojis1 = ["😊", "😅", "😍", "😂", "🫠", "🙂", "😇", "🥰", "😉", "🤪"]
	private static let emojis2 = ["🌟", "✨", "🎉", "🎊", "🎈", "🎆", "🎇", "🌈", "🎶", "🎵"]
	private static let emojis3 = ["💖", "💔", "💞", "💓", "💘", "💗", "💕", "💌", "🌹", "🌺"]

	private static func createMemoryGame() -> MemoGameModel<String> {
		return MemoGameModel<String>(numberOfCards: currentEmoijs.count) { index in
			if(){
			} else {
				return "?"
			}
	}
	
	func choose(_ card: MemoGameModel<String>.Card){
		model.choose(card)
	}
	
	func schuffle(){
		model.shuffle()
	}
}

