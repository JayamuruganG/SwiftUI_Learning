//
//  FeatureTabView.swift
//  Learn SwiftUI Day 7_AmericanFootball
//
//  Created by Jayamurugan on 20/03/24.
//

import SwiftUI

struct FeatureTabView: View {
  //MARK: - Properties
  //MARK: - Body
    var body: some View {
      TabView{
        ForEach(players) { player in
          FeaturedItemView(player: player)
            .padding(.top, 10)
            .padding(.horizontal, 15)
        }
      }//: TabView
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeatureTabView()
    .background(.gray)
}
