//
//  CoverImageView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import SwiftUI

struct CoverImageView: View {
  //MARK: - Properties
  let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
  //MARK: - Body
    var body: some View {
      TabView{
        ForEach(coverImages) { item in
          Image(item.name)
            .resizable()
            .scaledToFill()
        }//: Loop
      }//:TabView
      .tabViewStyle(PageTabViewStyle())
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}
