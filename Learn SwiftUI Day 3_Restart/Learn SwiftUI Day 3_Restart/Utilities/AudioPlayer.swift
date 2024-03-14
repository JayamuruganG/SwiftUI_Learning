//
//  AudioPlayer.swift
//  Learn SwiftUI Day 3_Restart
//
//  Created by Jayamurugan on 15/03/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do{
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
    }catch{
      print("Couldn't play this sound")
    }
  }
}
