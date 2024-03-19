//
//  VideoModel.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import Foundation

struct Video: Codable, Identifiable{
  let id: String
  let name: String
  let headline: String
}

extension Video {
  var thumbnail: String {
    "video-\(id)"
  }
}
