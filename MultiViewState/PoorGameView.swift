//
//  PoorGameView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct PoorGameView: View {
    @State private var score: Int = 0
    
    var body: some View {
        VStack {
            Text("Poor Game, Current Score: \(score)")
            Button("Play Game!", action: { score += 1 })
        }
    }
}

struct PoorGameView_Previews: PreviewProvider {
    static var previews: some View {
        PoorGameView()
    }
}
