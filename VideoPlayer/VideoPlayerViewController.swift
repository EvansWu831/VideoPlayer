//
//  VideoPlayerViewController.swift
//  VideoPlayer
//
//  Created by Evans Wu on 2018/7/5.
//  Copyright © 2018年 Evans Wu. All rights reserved.
//

import Foundation
import UIKit

class VideoPlayerViewController: UIViewController {

    var buttonView: UIView!
    var playButton: UIButton!
    var muteButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 8.0 / 255.0, green: 21.0 / 255.0, blue: 35.0 / 255.0, alpha: 1)
        setButtonView()
        setButton()
        view.addSubview(buttonView)
    }
    func setButtonView() {
        buttonView = UIView()
        buttonView.backgroundColor = UIColor(red: 0 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
        buttonView.frame = CGRect(x: 0, y: 623, width: 375, height: 44)
    }
    func setButton() {
        playButton = UIButton(type: UIButtonType.system)
        playButton.frame = CGRect(x: 20, y: 13, width: 33, height: 19)
        playButton.setTitle("Play", for: UIControlState.normal)
        playButton.setTitleColor(.white, for: UIControlState.normal)
        buttonView.addSubview(playButton)

        muteButton = UIButton(type: UIButtonType.system)
        muteButton.frame = CGRect(x: 320, y: 13, width: 39, height: 19)
        muteButton.setTitle("Mute", for: UIControlState.normal)
        muteButton.setTitleColor(.white, for: UIControlState.normal)
        buttonView.addSubview(muteButton)
    }
}
