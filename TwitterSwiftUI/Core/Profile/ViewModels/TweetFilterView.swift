//
//  TweetFilterView.swift
//  TwitterSwiftUI
//
//  Created by Youssef Bhl on 14/04/2022.
//

import Foundation

enum TweetFilterModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies : return "Replies"
        case .likes : return "Likes"
        }
    }
}
