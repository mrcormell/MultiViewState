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
            Text("Lucrative Game for those who like \(foodChoiceText). Score: \(stats.score)")
            Button("Play Game!", action: { stats.score += 5 })
        }
    }
}

struct LucrativeGameView_Previews: PreviewProvider {
    static var previews: some View {
        LucrativeGameView(foodChoiceText: "Burgers")
            .environmentObject(Stats())
    }
}
