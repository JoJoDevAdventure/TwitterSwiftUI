//
//  NewTweetView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 15/04/2022.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button  {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button  {
                    print("Tweet this")
                } label: {
                    Text("Tweet")
                        .foregroundColor(.white)
                        
                }
                .frame(width: 90, height: 33)
                .background(Color(.systemBlue))
                .cornerRadius(16)

            }.padding()
            
            HStack (alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                    .padding(.horizontal)
                TextArea("What's happening?", text: $caption)
            }
            
            .padding(.vertical, 10)
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
        
    }
}
