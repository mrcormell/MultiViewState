//
//  ContentView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct NameView: View {
    @State private var name: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Enter your name")
                TextField("Name: ", text: $name)
                NavigationLink("Launch!", destination: FoodChoiceView())
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
