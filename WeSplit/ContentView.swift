//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Oliveira on 21/11/20.
//

import SwiftUI

struct ContentView: View {
	@State private var name = ""
    
	var body: some View {
		Form {
			TextField("Enter your name", text: $name)
			Text("Your name is \(name)")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
