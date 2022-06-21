//
//  BattleResultViewController.swift
//  MarineJanken
//
//  Created by なぐも on 2022/06/15.
//

import UIKit

class BattleResultViewController: UIViewController {
    
    @IBOutlet weak var backGroundView: UIImageView!
    
    @IBOutlet weak var girlView: UIImageView!
    
    @IBOutlet weak var oppBalloonView: UIImageView!
    @IBOutlet weak var myBallonView: UIImageView!
    
    var jankenHands = ""
    
    @IBOutlet weak var oppTextView: UILabel!
    @IBOutlet weak var myTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(jankenHands)
        let background = UIImage(named: "marine_battle_field")
        backGroundView?.image = background
        
        let beachGirl = UIImage(named: "girl_01")
        girlView?.image = beachGirl
        
        let oppBalloon = UIImage(named: "opp_balloon")
        oppBalloonView.image = oppBalloon
        
        let myBallon = UIImage(named: "my_balloon")
        myBallonView.image = myBallon
        
        oppTextView.text = "どれにしようかしら・・・"
        myTextView.text = "どうしよう・・・"
    }
    


}
