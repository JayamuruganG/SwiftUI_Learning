//
//  VideoPlayerView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
  // MARK: - Properties
  var videoSelected: String
  var videoTitle: String
  // MARK: - Body
  var body: some View {
    VStack {
      VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")){

      }
      .overlay(
        Image("logo")
          .resizable()
          .scaledToFit()
          .frame(width: 32, height: 32)
          .padding(.top, 6)
          .padding(.horizontal, 8)
        , alignment: .topLeading
      )
    }
    .accentColor(.accentColor)
    .navigationTitle(videoTitle)
    .navigationBarTitleDisplayMode(.inline)
  }

}

#Preview {
  VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
}
