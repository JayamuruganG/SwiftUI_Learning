//
//  MapView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import SwiftUI
import MapKit

struct MapView: View {

  // MARK: - PROPERTIES

  let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")



  @State private var region: MapCameraPosition = {

    var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)

    var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)

    var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)



    return MapCameraPosition.region(mapRegion)

  }()

  @State private var selection: String?

  @State private var latitude: String = "6.600286"

  @State private var longitude: String = "16.437759"



  // MARK: - FUNCS

  // MARK: - BODY

  var body: some View {

    Map(position: $region, selection: $selection) {

      ForEach(locations) { location in

        Annotation(location.name, coordinate: location.location) {

          MapAnnotationView(location: location)

        }

      }

    }

    .overlay(alignment: .top) {

      HStack(alignment: .center, spacing: 12) {

        Image("compass")

          .resizable()

          .scaledToFit()

          .frame(width: 48, height: 48, alignment: .center)



        VStack(alignment: .leading, spacing: 3) {

          HStack {

            Text("Latitude:")

              .font(.footnote)

              .fontWeight(.bold)

              .foregroundStyle(.accent)

            Spacer()



            Text("\(latitude)")

              .font(.footnote)

              .foregroundStyle(.white)

          }

          Divider()

          HStack {

            Text("Longitude:")

              .font(.footnote)

              .fontWeight(.bold)

              .foregroundStyle(.accent)

            Spacer()



            Text("\(longitude)")

              .font(.footnote)

              .foregroundStyle(.white)

          }

        }

      }

      .padding(.vertical, 12)

      .padding(.horizontal, 16)

      .background {

        Color.black

          .clipShape(.rect(cornerRadius: 8))

          .opacity(0.6)



      }

      .padding()

    }

    .onMapCameraChange(frequency: .continuous, { mapCameraUpdateContext in

      let latitudeRounded = String(format: "%.6f", Double(mapCameraUpdateContext.region.center.latitude))

      let longitudeRounded = String(format: "%.6f", Double(mapCameraUpdateContext.region.center.longitude))



      latitude = "\(latitudeRounded)"

      longitude = "\(longitudeRounded)"

    })

  }

}
#Preview {
  MapView()
}


//struct MapView: View {
//  //MARK: - Properties
//  @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), latitudinalMeters: 60.0, longitudinalMeters: 60.0)
//  let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
//  var body: some View {
//    Map(coordinateRegion: $region, annotationItems: locations) { item in
//      MapAnnotation(coordinate: item.location) {
//        MapAnnotationView(location: item)
//      }
//    }
//  }
//  {
//    TabView{
//      ForEach(0..<1, id: \.self) { _ in
//        Map {
//          Marker("Africa", coordinate: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599))
//        }
//        .tint(.accent)
//        .overlay(
//          NavigationLink(destination: MapView()){
//            HStack{
//              Image(systemName: "mappin.circle")
//                .foregroundColor(.white)
//                .imageScale(.large)
//              Text("Locations")
//                .foregroundColor(.accentColor)
//                .fontWeight(.bold)
//            }//: HStack
//            .padding(.vertical, 10)
//            .padding(.horizontal, 14)
//            .background(
//              Color.black
//                .opacity(0.4)
//                .cornerRadius(8)
//            )
//          }//: Navigation
//            .padding(12)
//          , alignment: .topTrailing
//        )
//        .clipShape(.rect(cornerRadius: 20))
//        .mapStyle(.standard)
//
//        Map(coordinateRegion: $region, annotationItems: locations) { item in
//          MapAnnotation(coordinate: item.location){
//            Image("logo")
//              .resizable()
//              .scaledToFit()
//              .frame(width: 32, height: 32, alignment: .center)
//          }
//        } .frame(height: 256)
//          .clipShape(.rect(cornerRadius: 20))
//          .mapStyle(.standard)
//      }
//    }
//    .tabViewStyle(PageTabViewStyle())
//  }
//}

