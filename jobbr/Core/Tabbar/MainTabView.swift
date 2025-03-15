//
//  MainTabBar.swift
//  jobbr
//
//  Created by Chalermchai Poh-ek on 16/03/2568.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Swiping View") // MARK: This is the view of the tab.
                .tabItem {
                    Image(systemName: "flame")
                }
                .tag(0)
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            Text("Inbox View")
                .tabItem {
                    Image(systemName: "bubble")
                }
                .tag(2)
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(3)
        }
    }
}

#Preview {
    MainTabView()
}
