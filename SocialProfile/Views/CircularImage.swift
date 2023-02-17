//
//  CircularImage.swift
//  SocialProfile
//
//  Created by Redge Real on 2/16/23.
//

import SwiftUI

struct CircularImage: View {
    let image: Image
    var borderwidth: CGFloat = 3.0
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: borderwidth)
            )
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(image: Image("bearded-man"))
            .namedPreview()
    }
}
