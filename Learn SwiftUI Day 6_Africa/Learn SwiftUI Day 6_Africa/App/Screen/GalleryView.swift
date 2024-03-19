//
//  GalleryView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import SwiftUI

struct GalleryView: View {
  //MARK: - Properties
  let animals: [Animal] = Bundle.main.decode("animals.json")
  let haptics = UIImpactFeedbackGenerator(style: .medium)

  @State private var selectedAnimal: String = "lion"
  // simple grid definition
//  let gridLayout: [GridItem] = [
//    GridItem(.flexible()),
//    GridItem(.flexible()),
//    GridItem(.flexible())
//  ]

  // efficient Grid definition
  //let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)

// Dynamic grid Layout
  @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
  @State private var gridColumn: Double = 3.0

  func gridSwitch() {
    gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
  }

    var body: some View {
      ScrollView(.vertical, showsIndicators: false){
        // MARK: - Grid
        VStack {
          Image(selectedAnimal)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.accentColor, lineWidth: 8))

          // MARK: - Slider
          Slider(value: $gridColumn, in: 2...4, step: 1)
            .padding(.horizontal)
            .onChange(of: gridColumn, perform: { _ in
              gridSwitch()
            })

          LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10){
            ForEach(animals) { item in
              Image(item.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                  Circle().stroke(Color.white, lineWidth: 1 )
                )
                .onTapGesture {
                  selectedAnimal = item.image
                  haptics.impactOccurred()
                }
            }//: Loop
          }//: Grid
          .animation(.easeOut)
          .onAppear(perform: {
            gridSwitch()
          })
        }//: VStack
        .padding(.horizontal, 10)
        .padding(.vertical, 50)
      }//: Scroll
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
