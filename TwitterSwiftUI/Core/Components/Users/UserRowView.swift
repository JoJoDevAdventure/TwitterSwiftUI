//
//  UserRowView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 15/04/2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack (spacing: 15){
            Circle()
                .frame(width: 48, height: 48)
                .foregroundColor(.mint)
            VStack (alignment: .leading, spacing: 4){
                Text("joker")
                    .font(.subheadline).bold()
                Text("Heath Ledger")
                    .font(.subheadline)
            }.foregroundColor(.black)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
