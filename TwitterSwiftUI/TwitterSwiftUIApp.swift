//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 13/04/2022.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoginView()
            }
        }
    }
}
