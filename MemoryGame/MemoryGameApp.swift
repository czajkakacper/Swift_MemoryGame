//
//  MemoryGameApp.swift
//  MemoryGame
//
//  Created by student on 22/10/2024.
//

import SwiftUI

@main
struct MemoryGameApp: App {
	@StateObject var game = MemoGameViewModel()
	
    var body: some Scene {
        WindowGroup {
			ContentView(viewModel: model)
        }
    }
}
