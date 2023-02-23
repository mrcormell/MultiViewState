//
//  ContentView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct PlayerView: View {
    @State private var name: String = ""
    @State private var age: Double = 18
    @State private var score: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Name: ", text: $name)
                HStack {
                    Text("Age: \(age, specifier: "%.f")")
                    Slider(value: $age, in: 1...100, step: 1)
                }
                Text("Current Score: \(score)")
                NavigationLink("Launch!", destination: FoodChoiceView(name: name, age: $age))
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
