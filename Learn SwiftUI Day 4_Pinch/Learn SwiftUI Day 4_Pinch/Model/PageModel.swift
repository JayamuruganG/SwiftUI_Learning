//
//  PageModel.swift
//  Learn SwiftUI Day 4_Pinch
//
//  Created by Jayamurugan on 16/03/24.
//

import Foundation

struct Page: Identifiable {
  let id: Int
  let imageName: String
}

extension Page {
  var thumbnailName: String {
    return "thumb-" + imageName
  }
}
