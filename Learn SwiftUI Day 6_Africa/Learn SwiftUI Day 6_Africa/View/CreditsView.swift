//
//  CreditsView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 19/03/24.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128,  height: 128)
      Text("""
Copyright @ Robert Petras
All right reserved
Better Apps ♡ Less Code
""")
      .font(.footnote)
      .multilineTextAlignment(.center)
    }
    .padding()
    .opacity(0.4)
  }
}

#Preview(traits: .sizeThatFitsLayout) {
    CreditsView()
}
