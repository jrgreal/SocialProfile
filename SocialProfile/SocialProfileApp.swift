//
//  SocialProfileApp.swift
//  SocialProfile
//
//  Created by Redge Real on 2/16/23.
//

import SwiftUI

@main
struct SocialProfileApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @StateObject private var flagsController = FlagsController()
    
    var body: some Scene {
        WindowGroup {
            Group {
                if flagsController.flags.isNavigationEnabled {
                    NavigationStack {
                        ContentView(user: .preview)
                    }
                } else {
                    ContentView(user: .preview)
                }
            }
            .environmentObject(flagsController)
        }
        .onChange(of: scenePhase) { newScenePhase in
            if newScenePhase == .active {
                Task { try? await flagsController.loadFlags() }
            }
        }
    }
}
