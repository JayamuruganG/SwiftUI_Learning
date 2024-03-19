//
//  InsetFactView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import SwiftUI

struct InsetFactView: View {
  //MARK: - Properties
  let animal: Animal
  //MARK: - Body
    var body: some View {
      GroupBox{
        TabView{
          ForEach(animal.fact, id: \.self) { item in
            Text(item )
          }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
      }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  InsetFactView(animal: animals[1])
    .padding()
}
