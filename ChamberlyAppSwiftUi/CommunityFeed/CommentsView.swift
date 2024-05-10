//
//  CommentsView.swift
//  ChamberlyAppSwiftUi
//
//  Created by Satvik Viriyala on 10/05/24.
//

import Foundation
import SwiftUI
import Combine


struct CommentsView: View {
    // ... (Add properties for comment data as needed) ...

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("ProfilePicture") // Replace with actual image or user profile picture
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())

                VStack(alignment: .leading) {
                    Text("@Username") // Replace with actual username
                        .font(.headline)
                    Text("Comment text goes here. This can be multiple lines of text, and it should wrap around to the next line if it gets too long.")
                        .font(.subheadline)
                }
                .padding(.leading, 8)
            }
            .padding(.horizontal)

            HStack {
                Button(action: {}) {
                    Image(systemName: "heart")
                    Text("2")
                }
                .buttonStyle(.plain) // Remove default button styling

                Divider() // Vertical divider

                Button(action: {}) {
                    Image(systemName: "hand.thumbsup")
                    Text("1")
                }
                .buttonStyle(.plain)

                Divider()

                Button(action: {}) {
                    Image(systemName: "face.smiling")
                    Text("1")
                }
                .buttonStyle(.plain)

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
            .padding(.horizontal)
            .padding(.top)
            .font(.subheadline)
            .foregroundColor(.gray)

        }
        .padding(.top)
        .padding(.bottom)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(25)
        .padding(.horizontal)
        .padding(.bottom)
    }
}

#Preview {
    CommentsView()
}
