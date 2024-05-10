//
//  CommunityFeedView.swift
//
//  Created by Satvik Viriyala on 10/05/24.
//

import Foundation
import Combine
import SwiftUI

struct CommunityFeedMainView: View {
    var body: some View {
        NavigationStack { // Add NavigationStack to enable navigation
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        CommunityFeedView()
                            .ignoresSafeArea(.container, edges: .top)
                        PostView()
                        // Wrap CommentsView in NavigationLink
                        NavigationLink(destination: CommentsPageView()) {
                            CommentsView() // Use your existing CommentsView
                        }
                        .buttonStyle(.plain) // Remove button styling (optional)

                        
                    }
                    .padding(.bottom)
                }
                .ignoresSafeArea(.container, edges: .top)
                .padding(.bottom)

                Button(action: {}) {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                        .imageScale(.large)
                        .padding()
                        .foregroundColor(.blue)
                }
                .padding()
                
            }
        }
        
    }
}

// ... (Other views: MainView, CommunityFeedView, HeartBurstView, PostView, CommentsPageView, CommentsSubview remain the same) ...

struct CommunityFeedView: View {
    @State private var showCommunityOptions = false
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topLeading) {
                Image("HappyPeople")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                HStack {
                    Button(action: {
                        // Handle back button action
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.title3)
                            .imageScale(.small)
                            .padding()
                        
                            .background(Color.white.opacity(0.7))
                            .clipShape(Circle())
                    }
                    .padding(.top)
                    .padding(.top)
                    Spacer()
                    Button(action: {
                        // Handle share button action
                    }) {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title3)
                            .imageScale(.small)
                            .padding()
                            .background(Color.white.opacity(0.7))
                            .clipShape(Circle())
                    }
                    .padding(.top)
                    .padding(.top)
                    Button(action: {
                        showCommunityOptions.toggle() 
                    }) {
                        Image(systemName: "ellipsis")
                            .font(.title2)
                            .imageScale(.large)
                            .padding()
                            .background(Color.white.opacity(0.7))
                            .clipShape(Circle())
                    }
                    .padding(.top)
                    .padding(.top)
                }
                .padding(.horizontal)
                .padding(.top)
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("The happy club")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("1K MEMBERS")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Button(action: {
                    // Handle Join button action
                }) {
                    Image(systemName: "bell")
                        .font(.title2)
                }
                .padding(.horizontal)
                Button(action: {
                    // Handle Join button action
                }) {
                    Text("Join")
                        .font(.title3)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
            .padding(.top)

            Text("Join our supportive community dedicated to spreading positivity and inspiration!")
                .padding(.horizontal)
                .padding(.vertical)
                .padding(.bottom)
                .padding(.top)
        }
        .sheet(isPresented: $showCommunityOptions) {
                    CommunityOptionsView(showCommunityOptions: $showCommunityOptions) // Pass the binding
                }
    }
}
