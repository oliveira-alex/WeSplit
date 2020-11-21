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
			HStack(spacing: 0.0){
				Text("Select your student")
					.frame(maxWidth: 60)
				
				Picker("", selection: $selectedStudent) {
					ForEach(students, id: \.self) { student in
						Text(student)
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
