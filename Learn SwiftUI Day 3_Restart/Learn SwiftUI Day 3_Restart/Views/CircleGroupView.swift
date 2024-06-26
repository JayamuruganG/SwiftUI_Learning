//
//  CircleGroupView.swift
//  Learn SwiftUI Day 3_Restart
//
//  Created by Jayamurugan on 14/03/24.
//

import SwiftUI

struct CircleGroupView: View {
  // MARK: - Property
  @State var ShapeColor: Color
  @State var ShapeOpacity: Double
  @State private var isAnimating: Bool = false
    var body: some View {
      ZStack{
        Circle()
          .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
          .frame(width: 260, height: 260, alignment: .center)
        Circle()
          .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
          .frame(width: 260,height: 260, alignment: .center)
      }
      .blur(radius: isAnimating ? 0 : 2)
      .opacity(isAnimating ? 1 : 0.8)
      .scaleEffect(isAnimating ? 1 : 0.8)
      .animation(
        Animation.easeOut(duration: 1)
          .repeatForever()
          ,value: isAnimating
      )
      .onAppear(perform: {
        isAnimating = true
      })
    }
}

#Preview {
  ZStack {
    Color("ColorBlue")
      .ignoresSafeArea(.all, edges: .all)
    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
  }
}
