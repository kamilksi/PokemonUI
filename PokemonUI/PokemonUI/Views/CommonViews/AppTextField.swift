//
//  AppTextField.swift
//  PokemonUI
//
//  Created by Kamil Książek on 27/08/2022.
//

import SwiftUI

struct AppTextField: View {
    var placeholder: String
    @Binding var text: String
    @State var isSecureField: Bool = false

    var body: some View {
        VStack{
            if isSecureField == true {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
        }
        .frame(height: 50)
        .padding()
        .background(Color(.init(white: 1, alpha: 0.30)))
        .clipShape(Capsule())
    }
}

struct AppTextField_Previews: PreviewProvider {
    static var previews: some View {
        AppTextField(placeholder: "Email", text: .constant(""))
            .previewLayout(.sizeThatFits)
            .background(Color.orange)
            .padding()
    }
}
