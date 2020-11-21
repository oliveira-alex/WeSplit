//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Oliveira on 21/11/20.
//

import SwiftUI

struct ContentView: View {
	let students = ["Harry", "Hermione", "Ron"]
	@State private var selectedStudent = "Harry"
    
	var body: some View {
		VStack {
			HStack{
				Text("Select\nyour\nstudent")
				
				Picker("", selection: $selectedStudent) {
					ForEach(0 ..< students.count) {
						Text(self.students[$0]).tag(self.students[$0])
					}
				}
			}
			
			Text("Selected student: \(selectedStudent)")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
    }
}
