//
//  ContentView.swift
//  FacebookCloneSwiftUI
//
//  Created by phjemi on 11/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            FriendsView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                }
            MarketplaceView()
                .tabItem {
                    Image(systemName: "storefront")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")
                }
        }
    }
}

#Preview {
    ContentView()
}
