//
//  ContolImageView.swift
//  Learn SwiftUI Day 4_Pinch
//
//  Created by Jayamurugan on 16/03/24.
//

import SwiftUI

struct ContolImageView: View {
  let icon: String
    var body: some View {
      Image(systemName: icon)
        .font(.system(size: 36))
    }
}

#Preview {
  ContolImageView(icon: "minus.magnifyingglass")
}
