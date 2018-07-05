//
//  Video.swift
//  VideoPlayer
//
//  Created by Evans Wu on 2018/7/5.
//  Copyright © 2018年 Evans Wu. All rights reserved.
//

import Foundation
class Video: NSObject {
    @objc dynamic var videoIsPlaying: Bool
    @objc dynamic var videoIsMute: Bool
    init(videoIsPlaying: Bool, videoIsMute: Bool) {
        self.videoIsPlaying = videoIsPlaying
        self.videoIsMute = videoIsMute
    }
}
