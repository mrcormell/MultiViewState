//
//  GameTabView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct GameTabView: View {
    let foodChoice: FoodChoice
    
    var body: some View {
        TabView {
            LucrativeGameView(foodChoiceText: foodChoice.rawValue)
                .tabItem {
                    Image(systemName: "hands.sparkles")
                    Text("Lucrative")
                }
            PoorGameView()
                .tabItem {
                    Image(systemName: "hand.point.down")
                    Text("Poor")
                }
        }
    }
}

struct GameTabView_Previews: PreviewProvider {
    static var previews: some View {
        GameTabView(foodChoice: FoodChoice.burgers)
            .environmentObject(Stats())
    }
}
