//
//  AnimalGridItemView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 19/03/24.
//

import SwiftUI

struct AnimalGridItemView: View {
  //MARK: - Properties
  let animal: Animal

    var body: some View {
      Image(animal.image)
        .resizable()
        .scaledToFit()
        .cornerRadius(12 )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  AnimalGridItemView(animal: animals[0])
    .padding()
}
