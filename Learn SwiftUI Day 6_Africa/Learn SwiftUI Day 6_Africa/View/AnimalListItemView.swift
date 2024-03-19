//
//  AnimalListItemView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import SwiftUI

struct AnimalListItemView: View {
  // MARK: - Properties
  let animal: Animal


  // MARK: - Body
    var body: some View {
      HStack(alignment: .center) {
        Image(animal.image)
          .resizable()
          .scaledToFill()
          .frame(width: 90, height: 90)
          .clipShape(
            RoundedRectangle(cornerRadius: 12.0)
          )
        VStack(alignment: .leading, spacing: 8){
          Text(animal.name)
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundStyle(Color.accentColor)

          Text(animal.headline)
            .font(.footnote)
            .multilineTextAlignment(.leading)
            .lineLimit(2)
            .padding(.trailing, 8)

        }//: VStack
      }//: HStack
    }
}

let animals: [Animal] = Bundle.main.decode("animals.json")

#Preview(traits: .sizeThatFitsLayout) {
  AnimalListItemView(animal: animals[1])
    .padding()
}
