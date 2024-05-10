//
//  ContentView.swift

//
//  Created by Satvik Viriyala on 07/05/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("Home View")
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            Text("Bookmarks View")
                .tabItem {
                    Label("Bookmarks", systemImage: "book")
                }

            Text("Chat View")
                .tabItem {
                    Label("Chat", systemImage: "message")
                }

            CommunityFeedMainView()
                .tabItem {
                    Label("Explore", systemImage: "globe")
                }
        }
    }
}



#Preview {
    MainView()
}
