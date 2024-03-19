//
//  MainView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
      TabView{
        ContentView()
          .tabItem {
            Image(systemName: "square.grid.2x2")
            Text("Browse")
          }
        VideoListView()
          .tabItem {
            Image(systemName: "play.rectangle")
            Text("Watch")
          }

        MapView()
          .tabItem {
            Image(systemName: "map")
            Text("Watch")
          }

        GalleryView()
          .tabItem {
            Image(systemName: "photo")
            Text("Gallery")
          }
      }//: Tab
    }
}

#Preview {
    MainView()
}
