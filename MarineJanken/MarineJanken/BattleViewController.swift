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
        guCardView.contentHorizontalAlignment = .fill
        guCardView.contentVerticalAlignment = .fill
        
        screenWidth = view.frame.size.width
        screenHeight = view.frame.size.height
        
        // Buttonが画面の中央で横幅いっぱいのサイズになるように設定
        guCardView.frame = CGRect(x:20,
                                  y:544,
                                  width:120,
                                  height:120)
    }
}
