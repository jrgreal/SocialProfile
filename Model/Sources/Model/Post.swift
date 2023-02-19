//
//  Post.swift
//  SocialProfile
//
//  Created by Redge Real on 2/18/23.
//

import Foundation

public struct Post: Hashable, Identifiable {
    public let id = UUID()
    public let text: String
    public let date: Date
    public var comments: [Comment]
    public var likes: Int

    public init(text: String, date: Date, comments: [Comment], likes: Int) {
        self.text = text
        self.date = date
        self.comments = comments
        self.likes = likes
    }
}
