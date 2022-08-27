//
//  User.swift
//  PokemonUI
//
//  Created by Kamil Książek on 27/08/2022.
//

import SwiftUI
import FirebaseFirestoreSwift

struct User: Identifiable, Decodable{
    let email: String
    @DocumentID var id: String?
}
