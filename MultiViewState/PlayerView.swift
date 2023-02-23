//
//  ContentView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct PlayerView: View {
    @StateObject var player = Player()
    @StateObject var stats = Stats()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Name: ", text: $player.name)
                HStack {
                    Text("Age: \(player.age, specifier: "%.f")")
                    Slider(value: $player.age, in: 1...100, step: 1)
                }
                Divider()
                VStack {
                    Text("Current Score: \(stats.score)")
                    Text("Games Played: \(stats.gamesPlayed)")
                }
                .padding()
                NavigationLink("Launch!", destination: FoodChoiceView(player: player))
            }
            
            .padding()
        }
        .environmentObject(stats)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
