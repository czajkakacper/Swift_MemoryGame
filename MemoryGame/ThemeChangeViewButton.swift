//
//  ThemeChangeViewButton.swift
//  MemoryGame
//
//  Created by student on 29/10/2024.
//

import SwiftUI

struct ThemeChangeViewButton: View {
	var imageName = ""
	var text = ""
	var ownNumber = 0
	var ownColor = Color.green
	@Binding var themeColor : Color
	@Binding var themeNumer : Int
	var body: some View {
		Button(action: {
			themeNumer = ownNumber
			themeColor = ownColor
		}, label: {
			VStack{
				Image(systemName: imageName).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
				Text(text)
			}
		})
	}
}

//#Preview {
//    ThemeChangeViewButton()
//}
