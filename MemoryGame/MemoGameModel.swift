//
//  MemoGameModel.swift
//  MemoryGame
//
//  Created by student on 05/11/2024.
//

import SwiftUI

struct MemoGameModel<CardContent> where CardContent: Equatable{
	private(set) var cards: Array<Card>
	private(set) var minCard: Card? = nil
	
	init(numberOfCards: Int, cardContentFactory: (Int)->CardContent){
		cards = []
		let mainCardNumber = Int.random(in: 0..<numberOfCards)
		for index 0..<numberOfCards{
			let content: CardContent = cardContentFactory(index)
			cards.append(Card(content: content, id ))
		}
	}
	
	
	func choose(_ card:Card){
		
	}
	
	mutating func shuffle(){
		card.shuffle()
	}
}
