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
    
    var body: some View {
        VStack {
            Button("Click to half your age: ", action: {
                age = age / 2
            })
            Text("\(name), please pick your favourite food")
            NavigationLink("Burgers", destination: GameTabView(foodChoice: FoodChoice.burgers))
            NavigationLink("Pizza", destination: GameTabView(foodChoice: FoodChoice.pizza))
            NavigationLink("Pasta", destination: GameTabView(foodChoice: FoodChoice.pasta))
        }
    }
}

struct FoodChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        FoodChoiceView(name: "Darren", age: .constant(18))
    }
}
