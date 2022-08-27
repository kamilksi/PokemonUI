//
//  PokemonUIApp.swift
//  PokemonUI
//
//  Created by Kamil Książek on 11/08/2022.
//

import SwiftUI
import Firebase

@main
struct PokemonUIApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
