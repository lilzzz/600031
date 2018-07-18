//
//  ChannelVC.swift
//  smack
//
//  Created by LI on 17/7/18.
//  Copyright © 2018年 LI. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var toLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = view.frame.size.width - 60
        // Do any additional setup after loading the view.
    }

    @IBAction func toLoginPress(_ sender: Any) {
        performSegue(withIdentifier: "toLogin", sender: nil)
    }
    
    
}
