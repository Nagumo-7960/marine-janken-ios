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
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // CollectionViewを生成
        let layout = UICollectionViewFlowLayout()
        settingCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        settingCollectionView.register(SettingCell.self, forCellWithReuseIdentifier: "cell")
        settingCollectionView.delegate = self
        settingCollectionView.dataSource = self
        settingCollectionView.backgroundColor = UIColor.white
    }
}

class SettingCell:UICollectionViewCell{
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
}
