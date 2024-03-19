//
//  ContentView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import SwiftUI

struct ContentView: View {
  // MARK: - Properties
  let animals: [Animal] = Bundle.main.decode("animals.json")
  @State private var isGridViewActive: Bool = false
  let haptics = UIImpactFeedbackGenerator(style: .medium)

 // let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2 )
  @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
  @State private var gridColumn: Int = 1
  @State private var toolbarIcon: String = "square.grid.2x2"

  //MARK: - function
  func gridSwitch() {
    gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
    gridColumn = gridLayout.count
    print("grid \(gridColumn)")

    switch gridColumn {
    case 1:
      toolbarIcon = "rectangle.grid.1x2"
    case 2:
      toolbarIcon = "square.grid.2x2"
    case 3:
      toolbarIcon = "square.grid.3x2"
    default:
      toolbarIcon = "square.grid.2x2"
    }
  }

  // MARK: - Body
    var body: some View {
      NavigationView{
        Group {
          if !isGridViewActive {
            List{
              CoverImageView()
                .frame(height: 300)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

              ForEach(animals) { animal in
                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                  AnimalListItemView(animal: animal)
                }
              }
              CreditsView()
                .modifier(CenterModifier())
            }
          } else {
            ScrollView(.vertical, showsIndicators: false) {
              LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10){
                ForEach(animals) { animal in
                  NavigationLink(destination: AnimalDetailView(animal: animal)) {
                    AnimalGridItemView(animal: animal)
                  }
                }
              }
              .padding(10)
              .animation(.easeOut)
            }
          }//: List
        }//: Group
        .navigationBarTitle("Africa", displayMode: .large)
        .toolbar{
          ToolbarItem(placement: .topBarTrailing) {
            HStack(spacing: 16) {
              // List
              Button(action: {
                print("List view is activation")
                isGridViewActive = false
                haptics.impactOccurred()
              }) {
                Image(systemName: "square.fill.text.grid.1x2")
                  .font(.title2)
                  .foregroundColor(isGridViewActive ? .primary : .accentColor)
              }
              // Grid
              Button(action: {
                print("Grid view is activation")
                isGridViewActive = true
                haptics.impactOccurred()
                gridSwitch()
              }) {
                Image(systemName: toolbarIcon)
                  .font(.title2)
                  .foregroundColor(isGridViewActive ? .accentColor : .primary)
              }
            }
          }
        }
      }//: NAvigationView
    }
}

#Preview {
    ContentView()
}
