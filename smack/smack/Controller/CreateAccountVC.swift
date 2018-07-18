//
//  CreateAccountVC.swift
//  smack
//
//  Created by LI on 18/7/18.
//  Copyright © 2018年 LI. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func pref(_ sender: Any) {
        performSegue(withIdentifier: "unwindtoChannel", sender: nil)
    }
    

}
