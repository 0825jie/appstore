//
//  AppDetailController.swift
//  Appstore
//
//  Created by GetHired on 8/6/18.
//  Copyright © 2018 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class AppDetailController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    var app: App?{
        didSet{
            
        }
    }
    private let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        collectionView?.alwaysBounceVertical = true
        collectionView?.backgroundColor = .white
         collectionView?.register(AppDetailHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! AppDetailHeader
        
        header.app = app
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 170)
    }
    
}

class AppDetailHeader: BaseCell{
    var app: App? {
        didSet {
            if let imageName = app?.imageName {
                imageView.image = UIImage(named: imageName)
            }
           nameLabel.text = app?.name
        }
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "carton")
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST, hhedhdsk adfhk  adhfdf "
        label.textAlignment = .left
        label.backgroundColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    
    override func setupViews() {
        super.setupViews()
        addSubview(imageView)
        addSubview(nameLabel)
        imageView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 20, left: 12, bottom: 20, right: 250), size: .init(width: 60, height: 60))
        nameLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 20, left: 130, bottom: 20, right: 20), size: .init())
    }
}



class BaseCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("missing error")
    }
    
    func setupViews(){
        
    }
}
