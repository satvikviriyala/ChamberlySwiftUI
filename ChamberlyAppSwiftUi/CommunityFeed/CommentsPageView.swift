//
//  CommentsPageView.swift
//  ChamberlyAppSwiftUi
//
//  Created by Satvik Viriyala on 10/05/24.
//

import Foundation
import SwiftUI

struct CommentsPageView: View {
    @State private var comments: [Comment] = [] // Array to hold comments (replace with your data model)
    @State private var newCommentText = ""

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Comments")
                    .font(.title2).bold()
                Spacer()
            }
            .padding()
            .background(Color(UIColor.systemBackground)) // Match system background
            
            ScrollView {
                VStack(spacing: 16) {
//                    ForEach(comments, id: \.id) { comment in
                        CommentsSubview()
                    //}
                }
                .padding()
            }

            Divider()

            HStack {
                TextField("Type your comment", text: $newCommentText)
                    .padding(.horizontal)
                Button(action: {
                    // Handle sending new comment
                }) {
                    Image(systemName: "face.smiling")
                }
                .padding(.trailing)
            }
            .frame(height: 50)
            .background(Color(UIColor.systemBackground))
        }
    }
}

// Example Comment data model (replace with your actual model)
struct Comment: Identifiable {
    let id = UUID()
    let username: String
    let profilePicture: String
    let commentText: String
    let timestamp: String
    let replies: [Comment]
    let isReply: Bool // Add this property
    // Add other properties as needed (e.g., reactions)
}

struct CommentsPageView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsPageView()
    }
}



struct CommentsSubview: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("ProfilePicture") // Replace with placeholder or actual image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())

                VStack(alignment: .leading) {
                    Text("@Username") // Placeholder username
                        .font(.headline)
                    Text("This is a placeholder comment. It can be multiple lines and should wrap around.")
                        .font(.subheadline)
                }
                .padding(.leading, 8)

                Spacer()

                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.horizontal)

            // Reactions and replies (placeholder for now)
            HStack {
                Image(systemName: "heart")
                Text("2")
                
                Divider()

                Image(systemName: "hand.thumbsup")
                Text("1")

                Divider()

                Image(systemName: "face.smiling")
                Text("1")

                Spacer()

                Button(action: {}) {
                    Text("X Reply")
                    Image(systemName: "chevron.down")
                }

                Button(action: {}) {
                    Text("Reply")
                    Image(systemName: "paperplane")
                }
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            .padding(.horizontal)
        }
        .padding(.vertical, 8)
        .background(Color(red: 239/255, green: 243/255, blue: 250/255))
        .cornerRadius(10)
    }
}
