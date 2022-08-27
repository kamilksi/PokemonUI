//
//  LoginView.swift
//  PokemonUI
//
//  Created by Kamil Książek on 27/08/2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
            ZStack{
                Color("backgroundColor")
                    .ignoresSafeArea()
                VStack(spacing: 30){
                    AppTextField(placeholder: "Email", text: $email)
                    AppTextField(placeholder: "Password", text: $password, isSecureField: false)

                    Spacer()
                    Button(action: {
                        viewModel.login(withEmail: email, password: password)
                    }, label: {
                        CustomButtonView(buttonTitle: "Log In")
                            .foregroundColor(.white)
                    })
                    NavigationLink(destination: {
                        RegisterView().navigationBarBackButtonHidden(true)
                    }, label: {                        Text("Don't have an account?")
                        Text("Sign Up").fontWeight(.bold)
                    }).foregroundColor(.white)

                }
                .padding()
                .padding(.top, 50)
            }.navigationTitle("PokemonUI")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
