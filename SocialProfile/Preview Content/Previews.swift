//
//  Previews.swift
//  SocialProfile
//
//  Created by Redge Real on 2/16/23.
//

import SwiftUI

extension View {
    func previewWithName(_ name: String) -> some View {
        self
            .previewLayout(.sizeThatFits)
            .previewDisplayName(name)
    }
    
    func namedPreview() -> some View {
        let name = String.name(for: type(of: self))
        return previewWithName(name)
    }
}

extension String {
    static func name<T>(for type: T) -> String {
        String(reflecting: type)
            .components(separatedBy: ".")
            .last ?? ""
    }
}
