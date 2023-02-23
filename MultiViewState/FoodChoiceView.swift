//
//  FoodChoiceView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct FoodChoiceView: View {
    @ObservedObject var player: Player
    
    var body: some View {
        VStack {
            Text("You are \(player.age, specifier: "%.f") years old!")
            Button("Click to half your age! ", action: {
                player.age = player.age / 2
            })
            Divider()
            Text("\(player.name), please pick your favourite food")
            VStack(spacing: 10) {
                NavigationLink("Burgers", destination: GameTabView(foodChoice: FoodChoice.burgers))
                NavigationLink("Pizza", destination: GameTabView(foodChoice: FoodChoice.pizza))
                NavigationLink("Pasta", destination: GameTabView(foodChoice: FoodChoice.pasta))
            }
            .padding()
        }
    }
}

struct FoodChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        FoodChoiceView(player: Player())
    }
}
