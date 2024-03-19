//
//  VideoListView.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 17/03/24.
//

import SwiftUI

struct VideoListView: View {
  //MARK: - Properties
  @State private var videos: [Video] = Bundle.main.decode("videos.json")
  let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
      NavigationView {
        List{
          ForEach(videos) { video in
            NavigationLink(destination: VideoPlayerView(videoSelected:  video.id, videoTitle: video.name)) {
              VideoListItemView(video: video)
                .padding(.vertical, 8)
            }
          }//: Loop
        }//: List
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Videos")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
          ToolbarItem(placement: .topBarTrailing) {
            Button {
              //Shuffle video
              videos.shuffle()
              hapticImpact.impactOccurred()
            } label: {
              Image(systemName: "arrow.2.squarepath")
            }

          }
        }
      }//: Navigation
    }
}

#Preview {
    VideoListView()
}
