//
//  SideMenuOptionRawView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 15/04/2022.
//

import SwiftUI

struct SideMenuOptionRawView: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16){
            
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.description)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuOptionRawView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRawView(viewModel: .profile)
    }
}
