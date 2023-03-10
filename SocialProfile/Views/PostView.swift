//
//  PostView.swift
//  SocialProfile
//
//  Created by Redge Real on 2/18/23.
//

import SwiftUI
import Model

struct PostView: View {
    let user: User
    let post: Post
    let addComment: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            HStack {
                CircularImage(
                    image: Image(uiImage: user.headshot),
                    borderwidth: 2.0)
                .frame(width: 60.0)
                VStack(alignment: .leading, spacing: 4.0) {
                    Text(user.name)
                        .font(.headline)
                    Text(post.date.formatted(
                        date: .abbreviated,
                        time: .shortened))
                    .font(.caption)
                    .foregroundColor(.secondary)
                }
            }
            Text(post.text)
            HStack {
                Button(action: {}) {
                    Label("Like", systemImage: "hand.thumbsup")
                }
                Spacer()
                Button(action: addComment) {
                    Label("Comment", systemImage: "bubble.left")
                }
                Spacer()
                Button(action: {}) {
                    Label("Share", systemImage: "arrowshape.turn.up.right")
                }
            }
            .padding(.horizontal)
            ForEach(post.comments) { comment in
                CommentView(comment: comment)
                    .padding(.leading, 40.0)
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(user: .preview, post: .preview, addComment: {})
            .namedPreview()
    }
}
