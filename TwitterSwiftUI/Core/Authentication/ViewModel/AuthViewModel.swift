//
//  AuthViewModel.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 16/04/2022.
//

import Foundation
import Firebase
import UIKit

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var isAuthenticated = false
    
    private var tempUserSession: FirebaseAuth.User?
    private var service = UserService()
    
    init() {
        self.userSession = Auth.auth().currentUser
        self.fetchUser()
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { results, error in
            if let error = error {
                print("DEBUG: failed to signin with error : \(error.localizedDescription)")
            }
            guard let user = results?.user else { return }
            self.userSession = user
            print("DEBUG: Logged in")
        }
        
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { results, error in
            if let error = error {
                print("DEBUG: failed to register with error : \(error.localizedDescription)")
            }
            guard let user = results?.user else { return }
            //upload data to data base
            self.tempUserSession = user
            let data = ["email":email,
                        "username":username.lowercased(),
                        "fullname": fullname]
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.isAuthenticated = true
                }
        }
    }
    
    func logout() {
        userSession = nil
        try? Auth.auth().signOut()
    }
    
    func uploadProfileImage(_ image: UIImage) {
        guard let uid = tempUserSession?.uid else { return }
        
        ImageUploader.uploadImage(image: image) { profileImageUrl in
            Firestore.firestore().collection("users")
                .document(uid)
                .updateData(["profileImageUrl" : profileImageUrl]) { _ in
                    self.userSession = self.tempUserSession
                }
        }
    }
    
    func fetchUser() {
        guard let uid = self.userSession?.uid else { return }
        service.fetchUser(withUid: uid)
    }
}
