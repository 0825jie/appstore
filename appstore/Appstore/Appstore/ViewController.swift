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
//    let collectionView : UICollectionView = {
//         let cv = UICollectionView()
//        return cv
//    }()
    var appCategories : [AppCategory]?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
//    view.addSubview(collectionView)
       collectionView?.backgroundColor = UIColor.white
       collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
       appCategories = AppCategory.sampleAppCategories()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)as! CategoryCell
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



