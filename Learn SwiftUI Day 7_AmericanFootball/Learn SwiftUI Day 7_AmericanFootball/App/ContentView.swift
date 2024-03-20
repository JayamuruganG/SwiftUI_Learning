//
//  ContentView.swift
//  Learn SwiftUI Day 7_AmericanFootball
//
//  Created by Jayamurugan on 19/03/24.
//

import SwiftUI

struct ContentView: View {
  //MARK: - Properties

  //MARK: - Body
  var body: some View {
    ZStack {
      VStack(spacing: 0){
        NavigationBarView()
          .padding(.horizontal, 15)
          .padding(.bottom)
          .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          .background(.white)
          .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 5)

        ScrollView(.vertical, showsIndicators: false) {
          VStack(spacing: 0){
            FeatureTabView()
              .frame(minHeight: 256)
              .padding(.vertical, 10)

            FooterView()
              .padding(.horizontal)

          }//: Vstack
        }//: Scroll View
      }//: VStack
      .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }//: ZStack
    .ignoresSafeArea(.all, edges: .top)
  }
}
//MARK: - preview

#Preview {
  ContentView()
}
