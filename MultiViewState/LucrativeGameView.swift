//
//  LucrativeGameView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct LucrativeGameView: View {
    let foodChoiceText: String
    @EnvironmentObject var stats: Stats
    
    var body: some View {
        VStack {
            Text("Score: \(stats.score)")
            Spacer()
            Text("Oi, you who loves \(foodChoiceText) !")
            Divider()
            Button("Play Lucrative Game", action: { stats.score += 5
                stats.gamesPlayed += 1
            })
            Spacer()
        }
    }
}

struct LucrativeGameView_Previews: PreviewProvider {
    static var previews: some View {
        LucrativeGameView(foodChoiceText: "Burgers")
            .environmentObject(Stats())
    }
}
