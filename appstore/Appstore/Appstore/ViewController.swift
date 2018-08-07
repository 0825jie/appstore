//
//  ViewController.swift
//  Appstore
//
//  Created by GetHired on 8/3/18.
//  Copyright © 2018 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    var appCategories : [AppCategory]?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
       collectionView?.backgroundColor = UIColor.white
       collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
       appCategories = AppCategory.sampleAppCategories()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected")
    }
    
    func showAppDetailForApp(app: App){
        let layout = UICollectionViewFlowLayout()
        let appDetailController = AppDetailController(collectionViewLayout: layout)
        appDetailController.app = app
        navigationController?.pushViewController(appDetailController, animated: true)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)as! CategoryCell
        cell.appCategory = appCategories?[indexPath.item]
        cell.featuredAppsController = self
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       if  let count = appCategories?.count{
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }

}



