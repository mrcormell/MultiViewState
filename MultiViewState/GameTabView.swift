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
        GameTabView(foodChoice: FoodChoice.burgers)
    }
}
