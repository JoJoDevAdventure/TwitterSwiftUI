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
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            
            NavigationLink(destination: ProfilePhotoSelecterView(),
                           isActive: $viewModel.isAuthenticated, label: {})
            
            AuthHeaderView(firstText: "New member ?", secondText: "Creat an account!")
            
            VStack(spacing: 60) {
                CustomInputField(imageName: "envelope", placeHolderText: "Email", isSecureField: false, text: $email)
                CustomInputField(imageName: "person", placeHolderText: "Username", isSecureField: false, text: $userName)
                CustomInputField(imageName: "person", placeHolderText: "Full name", isSecureField: false, text: $fullName)
                CustomInputField(imageName: "lock", placeHolderText: "Password", isSecureField: true, text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 44)
            
            Button {
                viewModel.register(withEmail: email, password: password, fullname: fullName, username: userName)
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
