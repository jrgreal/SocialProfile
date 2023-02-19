//
//  File.swift
//  
//
//  Created by Redge Real on 2/19/23.
//

import Foundation

public struct Comment: Hashable, Identifiable {
    public let id = UUID()
    public let owner: User
    public let text: String
    
    public init(owner: User, text: String) {
        self.owner = owner
        self.text = text
    }
}
