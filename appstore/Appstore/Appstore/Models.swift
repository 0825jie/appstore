//
//  Models.swift
//  Appstore
//
//  Created by GetHired on 8/3/18.
//  Copyright © 2018 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class FeaturedApps : NSObject{
    var bannerCategory: AppCategory?
    var appCategories: [AppCategory]?
}

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
        
        let frozenApp2 = App()
        frozenApp2.name = "Cat Miu"
        frozenApp2.imageName = "cat"
        frozenApp2.category = "Game"
        frozenApp2.price = 2.99
        apps.append(frozenApp2)
        
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
