//
//  User.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 17/04/2022.
//

import FirebaseFirestoreSwift

struct User: Identifiable {
    @DocumentID var id : String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
