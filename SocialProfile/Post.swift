//
//  Post.swift
//  SocialProfile
//
//  Created by Redge Real on 2/18/23.
//

import Foundation

struct Post: Hashable, Identifiable {
    let id = UUID()
    let text: String
    let date: Date
}
