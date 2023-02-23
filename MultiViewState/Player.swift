//
//  Player.swift
//  MultiViewState
//
//  Created by David Cormell on 23/02/2023.
//

import Foundation

class Player: ObservableObject {
    @Published var name: String
    @Published var age: Double
    
    init() {
        name = ""
        age = 18.0
    }
}
