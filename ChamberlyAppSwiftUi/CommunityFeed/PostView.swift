//
//  PostView.swift
//
//  Created by Satvik Viriyala on 10/05/24.
//

import Foundation
import Combine
import SwiftUI



struct PostView: View {
    @State private var isLiked = false
    @State private var showEmojiOptions = false
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Image("ProfilePicture")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())

                    VStack(alignment: .leading) {
                        Text("Kyle")
                            .font(.headline)
                        Text("5h")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }

                    Spacer()

                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.horizontal)

                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. ...See less")
                    .padding(.horizontal)

                Image("post")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom)
                    .cornerRadius(5)
                    .padding(.horizontal)

                HStack {
                    Button(action: {
                        withAnimation {
                            isLiked.toggle()
                        }
                    }) {
                        ZStack {
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                                .foregroundColor(isLiked ? .red : .gray)
                            Text("5")

                            if isLiked {
                                HeartBurstView()
                            }
                        }
                    }
                    .gesture(
                        LongPressGesture(minimumDuration: 0.5)
                            .onEnded { _ in
                                showEmojiOptions = true
                            }
                    )
                    .sheet(isPresented: $showEmojiOptions) {
                        Text("Emoji Options")
                    }

                    Spacer()

                    Button(action: {}) {
                        Image(systemName: "star")
                        Text("2")
                    }

                    Spacer()

                    Button(action: {}) {
                        Image(systemName: "face.smiling")
                        Text("2")
                    }

                    Spacer()

                    Button(action: {}) {
                        Text("X Reply")
                        Image(systemName: "chevron.down")
                    }

                    Spacer()

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
}
