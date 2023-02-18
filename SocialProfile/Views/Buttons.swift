//
//  Buttons.swift
//  SocialProfile
//
//  Created by Redge Real on 2/18/23.
//

import SwiftUI

struct Buttons: View {
    let addFriend: () -> Void
    
    var body: some View {
        HStack(spacing: 24.0) {
            Button(action: addFriend) {
                Label("Add Friend", systemImage: "person.fill.badge.plus")
            }
            Button(action: {}) {
                Label("Message", systemImage: "envelope.fill")
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(addFriend: {})
            .namedPreview()
    }
}
