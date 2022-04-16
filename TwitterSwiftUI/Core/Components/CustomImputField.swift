//
//  CustomImputField.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 15/04/2022.
//

import SwiftUI

struct CustomImputField: View {
    
    let imageName: String
    let placeHolderText: String
    @Binding var text : String
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeHolderText, text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomImputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomImputField(imageName: "envelope", placeHolderText: "Email", text: .constant(""))
    }
}
