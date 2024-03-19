//
//  AnimalModel.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import Foundation

struct Animal: Codable, Identifiable {
  let id : String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}
