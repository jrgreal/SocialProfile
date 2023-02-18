//
//  SocialProfileApp.swift
//  SocialProfile
//
//  Created by Redge Real on 2/16/23.
//

import SwiftUI
import Model

@main
struct SocialProfileApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView(user: .preview)
            }
        }
    }
}
