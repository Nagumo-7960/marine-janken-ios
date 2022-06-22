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
        
        if(battleResultCheck()=="you_win"){
            oppTextView.text = "水着のお姉さん「私の負けね・・・」"
            myTextView.text = "勝った！"
        }
        if(battleResultCheck()=="draw"){
            oppTextView.text = "水着のお姉さん「あいこね・・・」"
            myTextView.text = "もう1回！"
        }
        if(battleResultCheck()=="you_lose"){
            oppTextView.text = "水着のお姉さん「私の勝ちね・・・」"
            myTextView.text = "負けちゃった・・・"
        }
        
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
        
    }
    
    func battleResultCheck() -> String{
        if(jankenHands=="gu"){
            if(oppHand=="gu"){
                return "draw"
            }
            if(oppHand=="choki"){
                return "you_win"
            }
            if(oppHand=="pa"){
                return "you_lose"
            }
        }
        if(jankenHands=="choki"){
            if(oppHand=="gu"){
                return "you_lose"
            }
            if(oppHand=="choki"){
                return "draw"
            }
            if(oppHand=="pa"){
                return "you_win"
            }
        }
        if(jankenHands=="pa"){
            if(oppHand=="gu"){
                return "you_win"
            }
            if(oppHand=="choki"){
                return "you_lose"
            }
            if(oppHand=="pa"){
                return "draw"
            }
        }
        return "you_win"
    }


}
