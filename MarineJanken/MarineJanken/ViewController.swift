//
//  ViewController.swift
//  MarineJanken
//
//  Created by なぐも on 2022/05/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var homeImageView: UIImageView!
    
    @IBOutlet weak var homeTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTitle.text = "うみべのじゃんけん"
        homeTitle.textColor = UIColor.white
        
        let background = UIImage(named: "marine_home")
        homeImageView?.image = background
        startButton.setTitle("スタート", for: .normal)
        startButton.setTitleColor(UIColor.black, for: .normal)
        

    }


}

