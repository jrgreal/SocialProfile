//
//  User.swift
//  SocialProfile
//
//  Created by Redge Real on 2/17/23.
//

import UIKit

struct User: Hashable {
    let name: String
    let headshot: UIImage
    let cover: UIImage
    let about: String
    let city: String
    let company: String
    let birthday: Date
    var friends: [User] = []
    var posts: [Post] = []
    var photos: [UIImage] = []
}
