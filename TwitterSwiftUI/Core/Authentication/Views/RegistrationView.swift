//
//  RegistrationView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 15/04/2022.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack { Spacer() }
                Text("Get started.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Creat your account")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack(spacing: 60) {
                CustomImputField(imageName: "envelope", placeHolderText: "Email", text: $email)
                CustomImputField(imageName: "person", placeHolderText: "Username", text: $userName)
                CustomImputField(imageName: "person", placeHolderText: "Full name", text: $fullName)
                CustomImputField(imageName: "lock", placeHolderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 44)
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding(.top, 20)
            }
            .shadow(color: .gray.opacity(0.7), radius: 10, x: 0, y: 0)
            
            Spacer()
                HStack {
                    Text("Already have an account?")
                        .font(.callout)
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Sign In")
                            .font(.headline)
                            .fontWeight(.bold)
                    }

                }
                .foregroundColor(Color(.systemBlue))
                .padding(.bottom, 30)
            
            
            
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
