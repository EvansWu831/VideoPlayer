//
//  AppDelegate.swift
//  VideoPlayer
//
//  Created by Evans Wu on 2018/7/5.
//  Copyright © 2018年 Evans Wu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = VideoPlayerViewController()
        return true
    }
}
