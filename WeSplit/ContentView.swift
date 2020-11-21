//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Oliveira on 21/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		NavigationView {
			Form {
				Section {
					Text("Hello, world!")
				}
			}
			.navigationTitle("SwiftUI")
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
