//
//  RegisterView.swift
//  PokemonUI
//
//  Created by Kamil Książek on 27/08/2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
            ZStack{
                Color("backgroundColor")
                    .ignoresSafeArea()
                VStack(spacing: 30){
                    AppTextField(placeholder: "Email", text: $email)
                    AppTextField(placeholder: "Password", text: $password, isSecureField: true)
                    Spacer()
                    Button(action: {
                        viewModel.register(withEmail: email, password: password)
                    }, label: {
                        CustomButtonView(buttonTitle: "Sign Up")
                            .foregroundColor(.white)
                    })
                    NavigationLink(destination: {
                        LoginView().navigationBarBackButtonHidden(true)
                    }, label: {                        Text("Already have an account?")
                        Text("Log In").fontWeight(.bold)
                    }).foregroundColor(.white)
                }
                .padding()
                .padding(.top, 50)
            }.navigationTitle("PokemonUI")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
