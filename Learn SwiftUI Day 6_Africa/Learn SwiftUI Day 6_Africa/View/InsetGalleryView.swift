//
//  InsetGalleryView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import SwiftUI

struct InsetGalleryView: View {
  // MARK: - Properties
  let animal: Animal
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(alignment: .center, spacing: 15) {
        ForEach(animal.gallery, id: \.self) { item in
          Image(item)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .cornerRadius(12)
        }//: Loop
      }//: HStack
    }//: Scroll
  }
}

#Preview {
  InsetGalleryView(animal: animals[0])
}
