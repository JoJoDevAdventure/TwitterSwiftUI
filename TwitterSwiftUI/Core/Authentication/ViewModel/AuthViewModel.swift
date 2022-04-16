//
//  AuthViewModel.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 16/04/2022.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
}
