//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Shailesh H on 08/08/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            UploadPostView()
                .tabItem {
                    Image(systemName: "plus.app")
                        .environment(\.symbolVariants, .none)
                }
            
            NotificationsView()
                .tabItem {
                    Image(systemName: "heart")
                        .environment(\.symbolVariants, .none)
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                        .environment(\.symbolVariants, .none)
                }
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
