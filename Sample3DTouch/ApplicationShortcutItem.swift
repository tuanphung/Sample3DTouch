//
//  ApplicationShortcutItem.swift
//  Sample3DTouch
//
//  Created by Tuan Phung on 12/22/15.
//  Copyright © 2015 Tuan Phung. All rights reserved.
//

import UIKit

enum ApplicationShortcutType: String {
    case Recent = "Recent"
    case Create = "Create"
    case Search = "Search"
}

func setupShortcutItems() {
    let item1 = UIApplicationShortcutItem(type: ApplicationShortcutType.Recent.rawValue, localizedTitle: "Recent Items")
    let item2 = UIApplicationShortcutItem(type: ApplicationShortcutType.Create.rawValue, localizedTitle: "Create new one", localizedSubtitle: "Create an awsome thing", icon: UIApplicationShortcutIcon(type: .Add), userInfo: nil)
    let item3 = UIApplicationShortcutItem(type: ApplicationShortcutType.Search.rawValue, localizedTitle: "Search", localizedSubtitle: "Create an awsome thing", icon: UIApplicationShortcutIcon(type: .Search), userInfo: nil)
    UIApplication.sharedApplication().shortcutItems = [item1, item2, item3]
}
