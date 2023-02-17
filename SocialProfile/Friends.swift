//
//  Friends.swift
//  SocialProfile
//
//  Created by Redge Real on 2/17/23.
//

import SwiftUI

struct Friends: View {
    let friends: [User]
    
    var body: some View {
        VStack {
            Text("72 Friends")
                .foregroundColor(.secondary)
            HStack(spacing: -3) {
                ForEach(0..<5) { index in
                    if index < friends.count {
                        CircularImage(
                            image: Image(uiImage: friends[index].headshot),
                            borderwidth: 2.0)
                            .frame(width: 48.0, height: 48.0)
                    }
                }
            }
        }
    }
}

struct Friends_Previews: PreviewProvider {
    static var previews: some View {
        Friends(friends: .preview)
            .namedPreview()
    }
}
