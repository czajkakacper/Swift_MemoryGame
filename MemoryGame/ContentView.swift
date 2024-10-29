//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 22/10/2024.
//

import SwiftUI

struct ContentView: View {
	@State var themeNumer = 1
	@State var themeColor = Color.green
	let tab1 = ["😊", "😅", "😍", "😂", "🫠", "🙂", "😇", "🥰", "😉", "🤪"]
	let tab2 = ["🌟", "✨", "🎉", "🎊", "🎈", "🎆", "🎇", "🌈", "🎶", "🎵"]
	let tab3 = ["💖", "💔", "💞", "💓", "💘", "💗", "💕", "💌", "🌹", "🌺"]
	@State var cardNumber = 4
    
    var body: some View {
        VStack {
			Text("Memo")
				.font(.largeTitle)
				.padding()
            ScrollView{
                cardDisplay
            }
			themeChanger
			
			//Dodawanie i usuwanie kart
//            HStack {
//                adjustCardNumber(by: -2, symbol: "minus.square")
//                    .disabled(cards_num <= 2)
//                    .opacity(cards_num <= 2 ? 0.2 : 1)
//                Spacer()
//                adjustCardNumber(by: 2, symbol: "plus.square")
//                    .disabled(cards_num >= tab.count)
//                    .opacity(cards_num >= tab.count ? 0.2 : 1)
//            }
            .padding()
            
        }
        .padding()
    }
    
	func themeChooser() -> (Array<String>, Int){
		if(themeNumer == 1){
			return(tab1.shuffled(),tab1.count)
		}
		if(themeNumer == 2){
			return(tab2.shuffled(),tab2.count)
		}
		return(tab3.shuffled(),tab3.count)
	}
	
	var themeChanger: some View{
		HStack{
			ThemeChangeViewButton(imageName: "bolt.car.circle", text: "Motyw 1", ownNumber: 1, ownColor: Color.green, themeColor: $themeColor , themeNumer: $themeNumer)
			Spacer()
			ThemeChangeViewButton(imageName: "bolt.car.circle", text: "Motyw 2", ownNumber: 2, ownColor: Color.blue, themeColor: $themeColor , themeNumer: $themeNumer)
			Spacer()
			ThemeChangeViewButton(imageName: "bolt.car.circle", text: "Motyw 3", ownNumber: 3, ownColor: Color.red, themeColor: $themeColor , themeNumer: $themeNumer)
		}
		.padding()
		.foregroundColor(themeColor)
	}
	
//    func adjustCardNumber(by offset: Int, symbol: String) -> some View {
//        Button(action: {
//            withAnimation {
//                cards_num += offset
//            }
//        }) {
//            Image(systemName: symbol)
//                .font(.largeTitle)
//                .foregroundColor(.blue)
//        }
//    }
    
    var cardDisplay: some View {
        LazyVGrid(columns:  [GridItem(.adaptive(minimum: 80))]){
			var tab = themeChooser()
			ForEach(0..<tab.1, id: \.self){ index in
				CardView(isFaceUp: false, content: tab.0[index])
					.aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(themeColor)
    }
}

#Preview {
    ContentView()
}
