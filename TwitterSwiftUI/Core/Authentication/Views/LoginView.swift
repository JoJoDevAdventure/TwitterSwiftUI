//
//  LoginView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 15/04/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        //parent container
        VStack {
            //header view
            AuthHeaderView(firstText: "Hello.", secondText: "Welcome Back.")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeHolderText: "Email", isSecureField : false, text: $email)
                
                CustomInputField(imageName: "lock", placeHolderText: "Password",isSecureField: true, text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                NavigationLink {
                    Text("Reset password view...")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 24)
                    
                }
            }
            
            Button {
                viewModel.login(withEmail: email, password: password)
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding(.top, 20)
            }
            .shadow(color: .gray.opacity(0.7), radius: 10, x: 0, y: 0)
            
            Spacer()
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.callout)
                    Text("Sign Up")
                        .font(.headline)
                        .fontWeight(.bold)
                }
                .foregroundColor(Color(.systemBlue))
                .padding(.bottom, 30)
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
