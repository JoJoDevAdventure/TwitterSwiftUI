//
//  SlideMenuView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 15/04/2022.
//

import SwiftUI

struct SlideMenuView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack (alignment: .leading, spacing: 32) {
            VStack (alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                VStack {
                    Text("Bruce Wayne")
                        .font(.headline)
                        .bold()
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRawView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        authViewModel.logout()
                    } label: {
                        SideMenuOptionRawView(viewModel: viewModel)
                    }
                } else {
                    SideMenuOptionRawView(viewModel: viewModel)
                }
                
            }
            Spacer()
        }
    }
}

struct SlideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuView()
    }
}
