//
//  BattleResultViewController.swift
//  MarineJanken
//
//  Created by なぐも on 2022/06/15.
//

import UIKit

class BattleResultViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIImageView!
    
    var jankenHands = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(jankenHands)
        let background = UIImage(named: "marine_battle_field")
        backgroundView?.image = background
    }
    


}
