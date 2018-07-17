//
//  ChatVC.swift
//  smack
//
//  Created by LI on 17/7/18.
//  Copyright © 2018年 LI. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    @IBOutlet weak var manuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

    
}
