//
//  TypeView.swift
//  PokemonUI
//
//  Created by Kamil Książek on 11/08/2022.
//

import SwiftUI

struct TypeView: View {
    var pokemonType: String = ""
    var body: some View {
        ZStack {
            Text(pokemonType)
                .font(.subheadline).bold()
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white.opacity(0.25))
                )
                .frame(width: 100, height: 40)
        }

    }
}

struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView(pokemonType: "Electric")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
