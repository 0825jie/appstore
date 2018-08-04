//
//  CategoryCell.swift
//  Appstore
//
//  Created by GetHired on 8/3/18.
//  Copyright © 2018 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("initial missing")
    }
    
    private let cellId = "appCellId"
    
    let appsCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.clear
        return collectionView
        
    }()
    
    let labelView: UITextView = {
        let txt = UITextView()
        txt.font = UIFont.boldSystemFont(ofSize: 13)
        txt.textColor = .black
        txt.text = "BEST ONEs"
        txt.textAlignment = .left
        //        txt.layer.cornerRadius = 10
        txt.isScrollEnabled = false
        txt.isEditable = false
        txt.backgroundColor = UIColor.clear
        return txt
    }()
    
    func setupViews(){
      
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
//        backgroundColor = UIColor.red
        addSubview(appsCollectionView)
        addSubview(labelView)
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        appsCollectionView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 24, left: 0, bottom: 0, right: 0), size: .init(width: 40, height: 40))
        labelView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: nil, padding:.zero, size: .zero)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AppCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    
}

class AppCell : UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("initial missing")
    }
    let imageView : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "11")
        img.backgroundColor = .clear
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    let infoView: UITextView = {
        let txt = UITextView()
        txt.font = UIFont.boldSystemFont(ofSize: 13)
        txt.text = "This Is A Cook"
        txt.textAlignment = .left
//        txt.layer.cornerRadius = 10
        txt.isScrollEnabled = false
        txt.isEditable = false
        txt.backgroundColor = UIColor.clear
        return txt
    }()
    let labelView: UITextView = {
        let txt = UITextView()
        txt.font = UIFont.boldSystemFont(ofSize: 10)
        txt.textColor = .gray
        txt.text = "The relevant UICollec instance is the item height must "
        txt.textAlignment = .left
//        txt.layer.cornerRadius = 10
        txt.isScrollEnabled = false
        txt.isEditable = false
        txt.backgroundColor = UIColor.clear
        return txt
    }()
    
    func setupViews(){
        addSubview(imageView)
        addSubview(infoView)
        addSubview(labelView)
        backgroundColor = UIColor.clear
        imageView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 20, left: 20, bottom: 130, right : 20), size: .zero)
        infoView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 110, left: 0, bottom: 0, right : 0), size: .zero)
        labelView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 140, left: 0, bottom: 0, right : 0), size: .zero)
        
    }
}


