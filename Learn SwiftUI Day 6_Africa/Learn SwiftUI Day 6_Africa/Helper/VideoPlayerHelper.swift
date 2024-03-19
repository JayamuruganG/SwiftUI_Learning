//
//  VideoPlayerHelper.swift
//  Learn SwiftUI Day 6_Africa
//
//  Created by Jayamurugan on 18/03/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?
func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else {
        fatalError("Unable to find \(fileName).\(fileFormat) in the bundle.")
    }
    let videoPlayer = AVPlayer(url: url)
    videoPlayer.play()
    return videoPlayer
}

