//
//  MotionAnimationView.swift
//  Learn SwiftUI Day 2
//
//  Created by Jayamurugan on 14/03/24.
//

import SwiftUI

struct MotionAnimationView: View {
  //MARK: Properties
  @State private var randomCircle: Int = Int.random(in: 6...12)
  @State private var isAnimated : Bool = false

  // MARK: Function
  // 1. Random Cooridate
  func randomCoordinate() -> CGFloat {
    return CGFloat.random(in: 0...256)
  }
  // 2. Random Size
  func randomSize() -> CGFloat {
    return CGFloat(Int.random(in: 4...80))
  }
  // 3. Random Scale
  func randomScale() -> CGFloat {
    return CGFloat(Double.random(in: 0.1...2.0))
  }
  // 4. Random Speed
  func randomSpeed() -> Double {
    return Double.random(in: 0.05...1.0)
  }
  // 5. Random Delay

  func randomDelay() -> Double {
    return Double.random(in: 0...2)
  }
    var body: some View {
      ZStack{
        ForEach(0...randomCircle, id: \.self) { item in
          Circle()
            .foregroundColor(.white)
            .opacity(0.25)
            .frame(width: randomSize())
            .position(x: randomCoordinate(), y: randomCoordinate())
            .scaleEffect(isAnimated ? randomScale() : 1)
            .onAppear(perform: {
              withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                .repeatForever()
                .speed(randomSpeed())
                .delay(randomDelay())
              ){
                isAnimated = true
              }
            })
        }
      }
      .frame(width: 256, height: 256)
      .mask(Circle())
      .drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
    .background(
      Circle().fill(.teal)
    )
}