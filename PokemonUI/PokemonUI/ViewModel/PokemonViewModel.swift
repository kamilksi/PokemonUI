//
//  PokemonViewModel.swift
//  PokemonUI
//
//  Created by Kamil Książek on 28/08/2022.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [PokemonModel]()
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"

    func fetchPokemon() {
        guard let url = URL(string: baseURL) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data?.parseData(removeString: "null,") else { return }
            guard let pokemon = try? JSONDecoder().decode([PokemonModel].self, from: data) else { return }

            DispatchQueue.main.async{
                self.pokemon = pokemon
            }
        }.resume()
    }

}
extension Data {
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else { return nil }
        return data
    }
}
