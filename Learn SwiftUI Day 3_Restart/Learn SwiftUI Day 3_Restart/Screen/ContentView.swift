//
//  ContentView.swift
//  Learn SwiftUI Day 3_Restart
//
//  Created by Jayamurugan on 14/03/24.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("onboarding") var isOboardingViewActive: Bool = true

    var body: some View {
      ZStack{
        if isOboardingViewActive {
          OnBoardingView()
        }else{
          HomeView()
        }
      }
    }
}

#Preview {
    ContentView()
}
