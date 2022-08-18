//
//  HomeView.swift
//  PokemonUI
//
//  Created by Kamil Książek on 16/08/2022.
//

import SwiftUI

struct HomeView: View {
    var pokemonModel: PokemonModel
    private let items = [GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 2
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: items, spacing: 10, content: {
                    ForEach(0 ..< samplePokemon.count, id: \.self) { pokemon in
                        NavigationLink{
                            PokemonGridView(pokemonModel: samplePokemon[pokemon])
                        } label: {
                            PokemonGridView(pokemonModel: samplePokemon[pokemon])
                        }
                    }
                })
            }.padding()
                .navigationTitle("Pokedex")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(pokemonModel: samplePokemon[1])
    }
}
