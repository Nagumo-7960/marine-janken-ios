//
//  SettingViewController.swift
//  MarineJanken
//
//  Created by なぐも on 2022/07/04.
//

import UIKit

class SettingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    var settingCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .blue
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        // CollectionViewを生成
        let layout = UICollectionViewFlowLayout()
        settingCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        settingCollectionView.register(SettingCell.self, forCellWithReuseIdentifier: "cell")
        settingCollectionView.delegate = self
        settingCollectionView.dataSource = self
        settingCollectionView.backgroundColor = UIColor.white
        
        self.view.addSubview(settingCollectionView)
        
        layout.itemSize = CGSize(width: (width/2)-10, height: (width/2)-10)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 30
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        settingCollectionView.collectionViewLayout = layout
        
    }
}

class SettingCell:UICollectionViewCell{
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 10
    }
}
