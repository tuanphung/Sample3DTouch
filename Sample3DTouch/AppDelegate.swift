//
//  AppDelegate.swift
//  Sample3DTouch
//
//  Created by Tuan Phung on 10/20/15.
//  Copyright © 2015 Tuan Phung. All rights reserved.
//

import UIKit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.setupShortcutItems()

        return true
    }

    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        handleShortCutItem(shortcutItem)
    }
    
    func setupShortcutItems() {
        let item1 = UIApplicationShortcutItem(type: ApplicationShortcutType.Recent.rawValue, localizedTitle: "Recent Items")
        let item2 = UIApplicationShortcutItem(type: ApplicationShortcutType.Create.rawValue, localizedTitle: "Create new one", localizedSubtitle: "Create an awsome thing", icon: UIApplicationShortcutIcon(type: .Add), userInfo: nil)
        let item3 = UIApplicationShortcutItem(type: ApplicationShortcutType.Search.rawValue, localizedTitle: "Search", localizedSubtitle: "Create an awsome thing", icon: UIApplicationShortcutIcon(type: .Search), userInfo: nil)
        UIApplication.sharedApplication().shortcutItems = [item1, item2, item3]
    }
    
    func handleShortCutItem(shortcutItem: UIApplicationShortcutItem) -> Bool {
        var handled = false
        //Get type string from shortcutItem
        let shortcutType = shortcutItem.type
        
        switch shortcutType {
            case ApplicationShortcutType.Recent.rawValue:
                handled = true
            case ApplicationShortcutType.Create.rawValue:
                handled = true
            case ApplicationShortcutType.Search.rawValue:
                handled = true
            default:()
        }
        
        return handled
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

