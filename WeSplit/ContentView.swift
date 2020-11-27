//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Oliveira on 21/11/20.
//

import SwiftUI

struct ContentView: View {
	@State private var checkAmount = ""
	@State private var numberOfPeople = 0
	@State private var tipPercentage = 4
	
	let tipPercentages = [10, 15, 20, 25, 0]
	
	var total: Double {
		let tipSelection = Double(tipPercentages[tipPercentage])
		let orderAmount = Double(checkAmount.replacingOccurrences(of: ",", with: ".")) ?? 0
		
		let tipValue = orderAmount * (tipSelection / 100)
		
		return orderAmount + tipValue
	}
	
	var totalPerPerson: Double {
		let peopleCount = Double(numberOfPeople + 2)
		
		return total / peopleCount
	}
	
	var body: some View {
		NavigationView {
			Form {
				Section {
					TextField("Amount", text: $checkAmount)
						.keyboardType(.decimalPad)
						.onChange(of: numberOfPeople) { _ in
							UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
						}
						.onChange(of: tipPercentage) { _ in
							UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
						}
					
					Picker("Number of people", selection: $numberOfPeople) {
						ForEach(2 ..< 100) {
							Text("\($0) people")
						}
					}
				}
				
				Section(header: Text("How much tip do you want to leave?")) {
					Picker("Tip percentage", selection: $tipPercentage) {
						ForEach(0 ..< self.tipPercentages.count) {
							Text("\(self.tipPercentages[$0])%")
						}
					}
					.pickerStyle(SegmentedPickerStyle())
				}
				
				Section(header: Text("Total amount")) {
					Text("$\(total, specifier: "%.2f")")
						.foregroundColor(tipPercentage == 4 ? .red : .black)
				}
				
				Section(header: Text("Amount per person")) {
					Text("$\(totalPerPerson, specifier: "%.2f")")
				}
			}
			.navigationBarTitle("WeSplit")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
    }
}
