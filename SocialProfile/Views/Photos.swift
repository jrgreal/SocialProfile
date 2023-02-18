//
//  Photos.swift
//  SocialProfile
//
//  Created by Redge Real on 2/18/23.
//

import SwiftUI

struct Photos: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Photos")
                .font(.title3)
                .bold()
            HStack(spacing: 24) {
                Group {
                    Image(uiImage: user.photos[0])
                        .resizable()
                    Image(uiImage: user.photos[1])
                        .resizable()
                    Image(uiImage: user.photos[2])
                        .resizable()
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: 100.0, height: 66.0)
                .border(.gray, width: 2.0)
                .clipped()
            }
        }
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos(user: .preview)
            .namedPreview()
    }
}
