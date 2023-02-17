//
//  User.swift
//  SocialProfile
//
//  Created by Redge Real on 2/17/23.
//

import UIKit

struct User {
    let name: String
    let headshot: UIImage
    let cover: UIImage
    var friends: [User] = []
}
