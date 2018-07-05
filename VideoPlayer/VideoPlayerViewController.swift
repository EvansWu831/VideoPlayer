//
//  VideoPlayerViewController.swift
//  VideoPlayer
//
//  Created by Evans Wu on 2018/7/5.
//  Copyright © 2018年 Evans Wu. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class VideoPlayerViewController: UIViewController, UITextFieldDelegate {

    var buttonView: UIView!
    var playButton: UIButton!
    var muteButton: UIButton!
    var urlTextField: UITextField!

    var playerView: UIView!
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 8.0 / 255.0, green: 21.0 / 255.0, blue: 35.0 / 255.0, alpha: 1)
        setButtonView()
        setButton()
        view.addSubview(buttonView)

        setPlayerView()
        view.addSubview(playerView)

        setUrlTextField()
        view.addSubview(urlTextField)
    }
    //播放
    func setPlayer(url: String) {
        guard let url = URL(string: url) else {return}
        player = AVPlayer(url: url)
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resize
        playerView.layer.addSublayer(playerLayer)
        player.play()
        playerLayer.frame = playerView.bounds
    }

    func setPlayerView() {
        playerView = UIView()
        playerView.backgroundColor = UIColor.clear
        playerView.frame = CGRect(x: 5, y: 200, width: 365, height: 250)
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

    func setUrlTextField() {
        urlTextField = UITextField()
        urlTextField.delegate = self
        urlTextField.frame = CGRect(x: 8, y: 27, width: 359, height: 30)
        urlTextField.backgroundColor = UIColor.white
        urlTextField.layer.masksToBounds = true
        urlTextField.layer.cornerRadius = 5
        urlTextField.placeholder = "🔍 Enter URL of video"
        urlTextField.textAlignment = .center
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let url = urlTextField.text else { return true }
        setPlayer(url: url)
        self.view.endEditing(true)
        return true
    }

}
