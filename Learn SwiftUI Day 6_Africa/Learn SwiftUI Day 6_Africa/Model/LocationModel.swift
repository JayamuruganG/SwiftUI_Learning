//
//  LocationModel.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
  var id: String
  var name: String
  var image: String
  var latitude: Double
  var longitude: Double

  // computed Property
  var location: CLLocationCoordinate2D{
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}
