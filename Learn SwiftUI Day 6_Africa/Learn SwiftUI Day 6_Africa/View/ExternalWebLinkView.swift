//
//  ExternalWebLinkView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
  //MARK: - Properties
  let animal: Animal
    var body: some View {
      GroupBox {
        HStack {
          Image(systemName: "globe")
          Text("Wikipedia")
          Spacer()

          Group{
            Image(systemName: "arrow.up.right.square")

            Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
          }.foregroundColor(.accentColor)
        }
      }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  ExternalWebLinkView(animal: animals[1])
    .padding()
}
