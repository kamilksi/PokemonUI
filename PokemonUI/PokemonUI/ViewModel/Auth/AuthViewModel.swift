//
//  AuthViewModel.swift
//  PokemonUI
//
//  Created by Kamil Książek on 27/08/2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?

    static let shared = AuthViewModel()

    init() {
        userSession = Auth.auth().currentUser
    }

    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Login failure - \(error.localizedDescription)")
            }
            guard let user = result?.user else { return }
            self.userSession = user
        }
    }

    func register(withEmail email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Register failure - \(error.localizedDescription)")
            }
            guard let user = result?.user else { return }
            self.userSession = user
        }
    }

    func signOut(){
        self.userSession = nil
        try? Auth.auth().signOut()
    }
}
