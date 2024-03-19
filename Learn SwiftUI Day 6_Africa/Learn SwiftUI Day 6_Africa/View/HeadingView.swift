//
//  HeadingView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import SwiftUI

struct HeadingView: View {
  //MARK: - Properties
  var headingImage: String
  var headingText: String
  //MARK: - Body
    var body: some View {
      HStack {
        Image(systemName: headingImage)
          .foregroundColor(.accentColor)
          .imageScale(.large)
        Text(headingText)
          .font(.title3)
          .fontWeight(.bold)
      }//: HStack
      .padding(.vertical)
    }
}

#Preview {
  HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
}
