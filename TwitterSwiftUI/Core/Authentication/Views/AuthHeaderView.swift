//
//  AuthHeaderView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 17/04/2022.
//

import SwiftUI

struct AuthHeaderView: View {
    @State var firstText: String
    @State var secondText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack { Spacer() }
            Text(firstText)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(secondText)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(firstText: "", secondText: "")
    }
}
