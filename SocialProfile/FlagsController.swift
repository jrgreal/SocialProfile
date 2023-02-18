//
//  FlagsController.swift
//  SocialProfile
//
//  Created by Redge Real on 2/17/23.
//

import Foundation

class FlagsController: ObservableObject {
    @Published var flags = Flags()
    
    @MainActor
    func loadFlags() async throws {
        let url = URL(string: "file:///Users/Shared/flags.json")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        flags = try decoder.decode(Flags.self, from: data)
    }
}
