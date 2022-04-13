//
//  ProfileView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 14/04/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            actionButtons
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Heath Ledger")
                        .font(.title).bold()
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(Color(.systemBlue))
                }
                Text("@Joker")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("Your moms favorite villain")
                    .font(.subheadline)
                    .padding(.vertical, 20)
                
                
                HStack(spacing: 40) {
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                        Text("Gotham, NY")
                    }
                    HStack{
                        Image(systemName: "link")
                        Text("www.thejoker.com")
                    }
                }
                .font(.caption)
                .foregroundColor(.gray)
                
                HStack(spacing: 50) {
                    HStack(spacing: 5){
                        Text("34").bold()
                        Text("Following")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    HStack(spacing: 5){
                        Text("2003").bold()
                        Text("Followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical)
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//Header View
extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 10, y: 2)
                }
                
                
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 31)
            }
            
            
        }
        .frame(height: 105)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray,lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
}
