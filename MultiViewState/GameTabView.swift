//
//  GameTabView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct GameTabView: View {
    let foodChoice: FoodChoice
    @Binding var score: Int
    
    var body: some View {
        TabView {
            LucrativeGameView(foodChoiceText: foodChoice.rawValue, score: $score)
                .tabItem {
                    Text("Lucrative")
                }
            PoorGameView()
                .tabItem {
                    Text("Poor")
                }
        }
    }
}

struct GameTabView_Previews: PreviewProvider {
    static var previews: some View {
        GameTabView(foodChoice: FoodChoice.burgers, score: .constant(12))
    }
}
