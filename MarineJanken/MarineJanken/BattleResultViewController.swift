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
    
    @IBOutlet weak var oppHandView: UIImageView!
    @IBOutlet weak var myHandView: UIImageView!
    
    let gu = UIImage(named:"janken_gu")
    let choki = UIImage(named:"janken_choki")
    let pa = UIImage(named:"janken_pa")
    
    var jankenHands = ""
    var oppHands = ["gu", "choki", "pa"]
    var oppHand:String = ""
    

    
    @IBOutlet weak var oppTextView: UILabel!
    @IBOutlet weak var myTextView: UILabel!
    
    let oppText = ""
    let myText = ""
    
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
        
        oppHand = oppHands.randomElement()!
        
        switch oppHand{
        case "gu":
            oppHandView.image = gu
        case "choki" :
            oppHandView.image = choki
        case "pa" :
            oppHandView.image = pa
        default:
            oppHandView.image = gu
        }
        
        switch jankenHands{
        case "gu":
            myHandView.image = gu
        case "choki":
            myHandView.image = choki
        case "pa" :
            myHandView.image = pa
        default:
            myHandView.image = gu
        }
        
        
        oppTextView.text = "どれにしようかしら・・・"
        myTextView.text = "どうしよう・・・"
    }
    
    func battleResultCheck(hand:String) -> Bool{
        
        return true
    }


}
