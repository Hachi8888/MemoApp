//
//  AppDelegate.swift
//  MemoApp
//
//  Created by VERTEX22 on 2019/08/03.
//  Copyright © 2019 N-project. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    // ViewControllerのtextViewに入力された最後の内容を格納
    var lastText: String?
    
    
  // アプリ起動時に呼ばれる
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        // ★userDefaultsをスコープごとに改めて定義 or おおもとのAppDelegate内で1回のみ定義
        let userDefaults = UserDefaults.standard
        // ★forKeyは先程と同じ名前にすること!
        lastText = userDefaults.object(forKey: "lastText") as? String
        
        
        return true
        // ★ここには処理を書かない
        
    }

    
    // ホームボタンが押されたタイミング
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        
        
      // lastTextに格納されている入力内容をアプリに保存する
      let userDefault = UserDefaults.standard
        userDefault.set(lastText, forKey: "lastText")
        }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

