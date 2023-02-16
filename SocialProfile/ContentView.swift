//
//  ContentView.swift
//  SocialProfile
//
//  Created by Redge Real on 2/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
#if DEBUG
            Text("**Base URL**: \(API.baseURL)")
            Text("**API key**: \(API.key)")
#endif
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
