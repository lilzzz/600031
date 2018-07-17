//
//  ChannelVC.swift
//  smack
//
//  Created by LI on 17/7/18.
//  Copyright © 2018年 LI. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = view.frame.size.width - 60
        // Do any additional setup after loading the view.
    }

}
