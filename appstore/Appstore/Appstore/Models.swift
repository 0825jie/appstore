//
//  Models.swift
//  Appstore
//
//  Created by GetHired on 8/3/18.
//  Copyright © 2018 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    var name: String?
    
    var apps: [App]?
    
    static func sampleAppCategories() -> [AppCategory] {
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        var apps = [App]()
        let frozenApp = App()
        frozenApp.name = "Cook"
        frozenApp.imageName = "11"
        frozenApp.category = "Game"
        frozenApp.price = 3.99
        apps.append(frozenApp)
        
        bestNewAppsCategory.apps = apps
        return [bestNewAppsCategory]
    }
    
}


class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName : String?
    var price : NSNumber?
}
