//
//  ContentView.swift
//  PokemonUI
//
//  Created by Kamil Książek on 11/08/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var pokemonModel: PokemonModel
    var body: some View {
        VStack {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                HomeView(pokemonModel: pokemonModel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pokemonModel: samplePokemon[0])
    }
}
