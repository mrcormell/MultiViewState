//
//  FoodChoiceView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct FoodChoiceView: View {
    let name: String
    @Binding var age: Double
    @Binding var score: Int
    
    var body: some View {
        VStack {
            Button("Click to half your age: ", action: {
                age = age / 2
            })
            Text("\(name), please pick your favourite food")
            NavigationLink("Burgers", destination: GameTabView(foodChoice: FoodChoice.burgers, score: $score))
            NavigationLink("Pizza", destination: GameTabView(foodChoice: FoodChoice.pizza, score: $score))
            NavigationLink("Pasta", destination: GameTabView(foodChoice: FoodChoice.pasta, score: $score))
        }
    }
}

struct FoodChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        FoodChoiceView(name: "Darren", age: .constant(18), score: .constant(10))
    }
}
