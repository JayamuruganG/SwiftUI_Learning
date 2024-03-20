//
//  FeaturedItemView.swift
//  Learn SwiftUI Day 7_AmericanFootball
//
//  Created by Jayamurugan on 20/03/24.
//

import SwiftUI

struct FeaturedItemView: View {
  //MARK: - Properties
  let player: Player
  //MARK: - Body
    var body: some View {
      Image(player.image)
        .resizable()
        .scaledToFit()
        .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[0])
    .padding()
    .background(Color.colorBackground)
}
