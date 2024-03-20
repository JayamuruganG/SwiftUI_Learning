//
//  FooterView.swift
//  Learn SwiftUI Day 7_AmericanFootball
//
//  Created by Jayamurugan on 20/03/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
      VStack(alignment: .center, spacing: 10) {
        Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
          .foregroundStyle(Color.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(2)

        Image("logo-lineal")
          .renderingMode(.template)
          .foregroundColor(.gray)
          .layoutPriority(0)

        Text("Copyright @ Robert Petras\nAll right reserved")
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundStyle(Color.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(1)
      }
      .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FooterView()
}
