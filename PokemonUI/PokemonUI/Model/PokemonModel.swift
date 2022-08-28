//
//  PokemonModel.swift
//  PokemonUI
//
//  Created by Kamil Książek on 11/08/2022.
//

import SwiftUI

struct PokemonModel: Encodable,Decodable,Identifiable {
    let id: Int
    let name: String
    let imageURL: String
    let type: String
}

let samplePokemon: [PokemonModel] = [
    .init(id: 0, name: "Arceus", imageURL: "Arceus", type: "Normal"),
    .init(id: 1, name: "Machamp", imageURL: "Machamp", type: "Fighting"),
    .init(id: 2, name: "Pidgeotto", imageURL: "Pidgeotto", type: "Flying"),
    .init(id: 3, name: "Pikachu", imageURL: "Pikachu", type: "Electric"),
    .init(id: 4, name: "Rattata", imageURL: "Rattata", type: "Normal"),
    .init(id: 5, name: "Squirtle", imageURL: "Squirtle", type: "Water")
]
