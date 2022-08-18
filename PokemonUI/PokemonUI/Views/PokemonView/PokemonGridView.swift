//
//  PokemonGridView.swift
//  PokemonUI
//
//  Created by Kamil Książek on 11/08/2022.
//

import SwiftUI

struct PokemonGridView: View {
    var pokemonModel: PokemonModel
    var pokemonName: String = ""
    var body: some View {
        VStack {

            Image(pokemonModel.imageURL)
                .resizable()
                .scaledToFit()
            Text(pokemonModel.name)
                .font(.headline)
                .fontWeight(.black)
                .foregroundColor(.white)
            TypeView(pokemonType: pokemonModel.type)
                .padding()

        }
        .background(.yellow)
        .cornerRadius(12)
        .shadow(color: .yellow, radius: 6, x: 0.0, y: 0.0)
    }
}

struct PokemonGridView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonGridView(pokemonModel: samplePokemon[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
