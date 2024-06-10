//
//  MainTabView.swift
//  AirbnbApp
//
//  Created by Atiqul Islam on 10/6/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView(){
            ExploreView()
                .tabItem { Label ("Explore" , systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label ("Wishlists" , systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label ("Profile" , systemImage: "person") }
        }
        .tint(.red)
    }
}

#Preview {
    MainTabView()
}
