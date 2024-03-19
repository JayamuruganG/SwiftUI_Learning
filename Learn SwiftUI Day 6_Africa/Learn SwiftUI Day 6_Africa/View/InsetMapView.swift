//
//  InsetMapView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
  // MARK: - Properties
  @State private var region = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)))
  // MARK: - Body

  var body: some View {
    Map(position: $region)
      .overlay(
        NavigationLink(destination: MapView(), label: {
          HStack{
            Image(systemName: "mappin.circle")
              .foregroundColor(.white)
              .imageScale(.large)
            Text("Locations")
              .foregroundStyle(Color.accentColor)
              .fontWeight(.bold)
          }
          .padding(.vertical, 10)
          .padding(.horizontal, 14)
          .background(
            Color.black
              .opacity(0.4)
              .cornerRadius(8)
          )
        })
        .padding(12), alignment: .topTrailing
      )
      .frame(height: 256)
      .clipShape(RoundedRectangle(cornerRadius: 12))
  }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetMapView()
    .padding()
}
