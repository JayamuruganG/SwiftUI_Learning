//
//  CodableBundleExtension.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    // 1. Locate the json file
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle")
    }
    // 2. Create a property for the data
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed tot load \(file) from bundle")
    }
    // 3. create a decoder
    let decode = JSONDecoder()
    
    // $. create a property for the decoded data
    guard let loaded = try? decode.decode(T.self, from: data) else {
      fatalError("Failed tot load \(file) from bundle")
    }
    
    return loaded
  }
}
