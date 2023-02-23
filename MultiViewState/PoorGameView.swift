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
            Text("Poor Game, Current Score: \(stats.score)")
            Button("Play Game!", action: { stats.score += 1 })
        }
    }
}

struct PoorGameView_Previews: PreviewProvider {
    static var previews: some View {
        PoorGameView()
    }
}
