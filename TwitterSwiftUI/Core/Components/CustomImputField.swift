//
//  CustomImputField.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 15/04/2022.
//

import SwiftUI

struct CustomInputField: View {
    
    let imageName: String
    let placeHolderText: String
    let isSecureField: Bool
    
    @Binding var text : String
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if isSecureField {
                    SecureField(placeHolderText, text: $text)
                } else {
                    TextField(placeHolderText, text: $text)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomImputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope", placeHolderText: "Email", isSecureField: false, text: .constant(""))
    }
}
