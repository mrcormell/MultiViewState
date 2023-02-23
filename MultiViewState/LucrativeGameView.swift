//
//  LucrativeGameView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct LucrativeGameView: View {
    let foodChoiceText: String
    @State private var score: Int = 0
    
    var body: some View {
        VStack {
            Text("Lucrative Game for those who like \(foodChoiceText). Score: \(score)")
            Button("Play Game!", action: { score += 5 })
        }
    }
}

struct LucrativeGameView_Previews: PreviewProvider {
    static var previews: some View {
        LucrativeGameView(foodChoiceText: "Burgers")
    }
}
