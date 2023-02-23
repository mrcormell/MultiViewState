//
//  PoorGameView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct PoorGameView: View {
    @EnvironmentObject var stats: Stats
    
    var body: some View {
        VStack {
            Text("Score: \(stats.score)")
            Spacer()
            Button("Play Poor Game!", action: { stats.score += 1
                stats.gamesPlayed += 1
            })
            Spacer()
        }
    }
}

struct PoorGameView_Previews: PreviewProvider {
    static var previews: some View {
        PoorGameView()
            .environmentObject(Stats())
    }
}
