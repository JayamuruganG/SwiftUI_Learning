//
//  CustomBackgroundView.swift
//  Learn SwiftUI Day 2
//
//  Created by Jayamurugan on 13/03/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
      ZStack {
        // MARK: 3. Depth
        Color.customGreenDark
          .cornerRadius(40)
          .offset(y: 12)
        // MARK: 2. light
        Color.customGreenLight
          .cornerRadius(40)
          .offset(y:3)
          .opacity(0.85)
        // MARK: 1. surface
        LinearGradient(colors: [Color.customGreenLight, Color.customGreenDark], startPoint: .top, endPoint: .bottom).cornerRadius(40)
      }
    }
}

#Preview {
    CustomBackgroundView()
}
