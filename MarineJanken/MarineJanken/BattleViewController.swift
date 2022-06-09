//
//  BattleViewController.swift
//  MarineJanken
//
//  Created by なぐも on 2022/06/03.
//

import UIKit

class BattleViewController: UIViewController {

    @IBOutlet weak var backGroundView: UIImageView!
    
    @IBOutlet weak var girlView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let background = UIImage(named: "marine_battle_field")
        backGroundView?.image = background
        
        let beachGirl = UIImage(named: "girl_01")
        girlView?.image = beachGirl
    }
}
