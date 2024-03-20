//
//  Constant.swift
//  Learn SwiftUI Day 7_AmericanFootball
//
//  Created by Jayamurugan on 20/03/24.
//

import SwiftUI

// Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")


// Color

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}
// UX
// API
// Image
// Font
// MISC
