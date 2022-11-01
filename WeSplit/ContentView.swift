//
//  ContentView.swift
//  WeSplit
//
//  Created by Morgan on 2022/11/1.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20

    let tipPercentages = [10, 15, 20, 0]

    var body: some View {
        Form {
            Section {
                // $ represents two-way binding
                // replace text with value to implicate the double property
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "TWD"))
                    .keyboardType(.decimalPad)
            }

            Section {
                Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "TWD"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
