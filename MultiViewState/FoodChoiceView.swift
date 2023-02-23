//
//  FoodChoiceView.swift
//  MultiViewState
//
//  Created by Cormell, David - DPC on 23/02/2023.
//

import SwiftUI

struct FoodChoiceView: View {
    var body: some View {
        VStack {
            Text("Pick your favourite food")
            NavigationLink("Burgers", destination: GameTabView())
        }
    }
}

struct FoodChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        FoodChoiceView()
    }
}
