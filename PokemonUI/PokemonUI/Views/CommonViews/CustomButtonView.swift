//
//  CustomButtonView.swift
//  PokemonUI
//
//  Created by Kamil Książek on 27/08/2022.
//

import SwiftUI

struct CustomButtonView: View {
    var buttonTitle: String
    var body: some View {
        VStack{
            Text(buttonTitle)
                .fontWeight(.black)
                .frame(width:150, height: 75)
                .background(Color(.init(white: 1, alpha: 0.30)))
                .clipShape(Capsule())
        }
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(buttonTitle: "Log In")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
