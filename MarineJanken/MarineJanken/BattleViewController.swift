//
//  BattleViewController.swift
//  MarineJanken
//
//  Created by なぐも on 2022/06/03.
//

import UIKit

class BattleViewController: UIViewController {

    @IBOutlet weak var backGround: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let background = UIImage(named: "marine_battle_field")
        backGround?.image = background
    }
}
