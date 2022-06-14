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
    
    @IBOutlet weak var oppBalloonView: UIImageView!
    @IBOutlet weak var myBallonView: UIImageView!
    
    
    @IBOutlet weak var guCardView: UIButton!
    @IBOutlet weak var chokiCardView: UIButton!
    @IBOutlet weak var paCardView: UIButton!
    
    let gu = UIImage(named:"janken_gu")
    let choki = UIImage(named:"janken_choki")
    let pa = UIImage(named:"janken_pa")
    
    @IBOutlet weak var oppTextView: UILabel!
    @IBOutlet weak var myTextView: UILabel!
    
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let background = UIImage(named: "marine_battle_field")
        backGroundView?.image = background
        
        let beachGirl = UIImage(named: "girl_01")
        girlView?.image = beachGirl
        
        guCardView.setImage(gu, for: .normal)
        guCardView.imageView?.contentMode = .scaleAspectFit
        
        chokiCardView.setImage(choki, for: .normal)
        chokiCardView.imageView?.contentMode = .scaleAspectFit
        
        paCardView.setImage(pa, for: .normal)
        paCardView.imageView?.contentMode = .scaleAspectFit
        
        let oppBalloon = UIImage(named: "opp_balloon")
        oppBalloonView.image = oppBalloon
        
        let myBallon = UIImage(named: "my_balloon")
        myBallonView.image = myBallon
        
        oppTextView.text = "どれにしようかしら・・・"
        myTextView.text = "どうしよう・・・"
        
    }
}
