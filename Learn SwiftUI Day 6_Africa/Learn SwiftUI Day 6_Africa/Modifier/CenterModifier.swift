//
//  CenterModifier.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 19/03/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
