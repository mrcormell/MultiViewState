//
//  GameTabView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct GameTabView: View {
    var body: some View {
        TabView {
            LucrativeGameView()
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
        GameTabView()
    }
}
