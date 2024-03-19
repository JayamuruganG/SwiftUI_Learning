//
//  VideoListItem.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import SwiftUI

struct VideoListItemView: View {
  //MARK: - Properties
  let video: Video
    var body: some View {
      HStack {
        ZStack {
          Image(video.thumbnail)
            .resizable()
            .scaledToFit()
            .frame(height: 80)
          .cornerRadius(8)

          Image(systemName: "play.circle")
            .resizable()
            .scaledToFit()
            .frame(height: 32)
          .shadow(radius: 4)
        }//: ZStack

        VStack(alignment: .leading, spacing: 10){
          Text(video.name)
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundStyle(Color.accentColor)

          Text(video.headline)
            .font(.footnote)
            .multilineTextAlignment(.leading)
            .lineLimit(2)
        }//: VStack
      }//: HStack
    }
}

let videos: [Video] = Bundle.main.decode("videos.json")
#Preview(traits: .sizeThatFitsLayout) {
  VideoListItemView(video: videos[0])
    .padding()
}
