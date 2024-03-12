//
//  ContentView.swift
//  Learn Swift Day 1
//
//  Created by Jayamurugan on 12/03/24.
//

import SwiftUI

extension Image{
  func imageModifer() -> some View {
    self
      .resizable()
      .scaledToFit()
  }

  func iconModifer() -> some View {
    self
      .imageModifer()
      .frame(maxWidth: 128)
      .foregroundColor(.blue)
      .opacity(0.5)
  }
}

struct ContentView: View {
    var body: some View {
      AsyncImageView()
    }
}

#Preview {
    ContentView()
}

struct AsyncImageView: View {

  private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
  var body: some View {
  //  AsyncImage(url: URL(string: imageURL)!, scale: 4.0)
//    AsyncImage(url: URL(string: imageURL)){ image in
//      image
//        .imageModifer()
//    }placeholder: {
//      Image(systemName: "photo.circle.fill")
//        .iconModifer()
//    }.padding()

//    AsyncImage(url: URL(string: imageURL)){ phase in
//      if let image = phase.image {
//        image
//          .imageModifer()
//      }else if phase.error != nil {
//        Image(systemName: "ant.circle.fill")
//          .iconModifer()
//      }else{
//        Image(systemName: "photo.circle.fill")
//          .iconModifer()
//      }
//    }


    AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5,dampingFraction: 0.6, blendDuration: 0.25))) { image in
      switch image {
      case .empty:
        Image(systemName: "photo.circle.fill")
            .iconModifer()

      case .success(let image):
        image
            .imageModifer()
        .transition(.move(edge: .bottom))
        //.transition(.slide)
        //    .transition(.scale)
      case .failure( _ ):
        Image(systemName: "ant.circle.fill")
            .iconModifer()
      @unknown default:
        ProgressView()
      }
    }.padding(40)

  }
}

struct DiamondPathShapeView: View {
  var body: some View {
    Path{ path in
      path.move(to: CGPoint(x: 100, y: 00))
      path.addLine(to: CGPoint(x: 300, y: 0))
      path.addLine(to: CGPoint(x: 400, y: 100))
      path.addLine(to: CGPoint(x: 200, y: 400))
      path.addLine(to: CGPoint(x: 0, y: 100))
      path.closeSubpath()
    }
    .stroke(.purple, style: .init(lineWidth: 4.0))
    .fill(
      LinearGradient(colors: [.white,.purple], startPoint: .topTrailing, endPoint: .bottomLeading)
    )
    .frame(width: 400,height: 400)

  }
}

struct CustomGradiantText: View {
  var body: some View {
    Text("iOS")
      .font(.system(size: 180))
      .fontWeight(.black)
      .foregroundStyle(.teal.gradient)

    Text("iOS")
      .font(.system(size: 180))
      .fontWeight(.black)
      .foregroundStyle(
        LinearGradient(colors: [.red,.blue,.green,.yellow], startPoint: .bottomLeading, endPoint: .top)
      )
  }
}


struct CustomLinkButton: View {
  var body: some View {
    Link(destination: URL(string: "https://google.com")!){
      HStack(spacing:16) {
        Image(systemName: "apple.logo")
        Text("Apple Pay")
      }
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .padding(.horizontal)
      .background{
        Capsule()
          .fill(.blue)
      }
    }
  }
}

struct LinkView: View {
  var body: some View {
    Spacer()
    Link("Go to Apple", destination: URL(string: "https://apple.com")!)
      .buttonStyle(.borderless)
    Spacer()
    Link("Call to Action", destination: URL(string: "tell:12345667")!)
      .buttonStyle(.bordered)
      .buttonBorderShape(.roundedRectangle)
      .controlSize(.extraLarge)
    Spacer()
    Link("Send an Email", destination: URL(string: "mailto:swiftui@apple.com")!)
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.capsule)
      .controlSize(.large)
      .tint(.blue)
    Spacer()
    Link("Credo Academy", destination: URL(string: "https://credo.com")!)
      .buttonStyle(.plain)
      .padding()
      .border(.primary, width: 2)
    Spacer()
  }
}
