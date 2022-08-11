//
//  PokemonGridView.swift
//  PokemonUI
//
//  Created by Kamil Książek on 11/08/2022.
//

import SwiftUI

struct PokemonGridView: View {
    var pokemonName: String = ""
    var body: some View {
        VStack {

            Image("Pikachu")
                .resizable()
                .scaledToFit()
            Text(pokemonName)
                .font(.headline)
                .fontWeight(.black)
                .foregroundColor(.white)
            TypeView(pokemonType: "Electric")
                .padding()

        }
        .background(.yellow)
        .cornerRadius(12)
        .shadow(color: .yellow, radius: 6, x: 0.0, y: 0.0)
    }
}

struct PokemonGridView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonGridView(pokemonName: "Pikachu")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
