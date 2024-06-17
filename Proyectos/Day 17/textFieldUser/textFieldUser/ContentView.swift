//
//  ContentView.swift
//  textFieldUser
//
//  Created by Raúl Gallego Alonso on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                // Esto genera la moneda en el pais en el que estas, acuerdate de la localizacion de calendario
                    .keyboardType(.decimalPad)
                //Esto lo que hace es que en el teclado solo sale numeros
            }
            Section {
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}


#Preview {
    ContentView()
}
