//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Oliveira on 21/11/20.
//

import SwiftUI

struct ContentView: View {
	@State private var tapCount = 0
    
	var body: some View {
		Button("Tap Count \(tapCount)") {
			self.tapCount += 1
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
