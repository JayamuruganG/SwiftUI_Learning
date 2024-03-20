//
//  LogoView.swift
//  Learn SwiftUI Day 7_AmericanFootball
//
//  Created by Jayamurugan on 20/03/24.
//

import SwiftUI

struct LogoView: View {
  //MARK: - Properties
  //MARK: - Body
    var body: some View {
      HStack(spacing: 4){
        Text("Touch".uppercased())
          .font(.title3)
          .fontWeight(.black)
          .foregroundStyle(.black)

        Image("logo-dark")
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)

        Text("Down".uppercased())
          .font(.title3)
          .fontWeight(.black)
          .foregroundStyle(.black)
      }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LogoView()
    .padding()
}
