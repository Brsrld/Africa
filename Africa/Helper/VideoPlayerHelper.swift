//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Baris Saraldi on 18.08.2021.
//

import Foundation
import AVKit

var videoplayer: AVPlayer?

func playVideo(filename:String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: filename, withExtension: fileFormat) != nil {
        videoplayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileFormat)!)
        videoplayer?.play()
    }
    return videoplayer!
}
