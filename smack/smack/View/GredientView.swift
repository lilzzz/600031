//
//  GredientView.swift
//  smack
//
//  Created by LI on 18/7/18.
//  Copyright © 2018年 LI. All rights reserved.
//

import UIKit

@IBDesignable

class GredientView: UIView {
    @IBInspectable var topcolor: UIColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable var buttomcolor: UIColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }

    override func layoutSubviews() {
        let gradiantLayer = CAGradientLayer()
        gradiantLayer.colors = [topcolor.cgColor, buttomcolor.cgColor]
        gradiantLayer.startPoint = CGPoint(x: 0, y: 0)
        gradiantLayer.endPoint = CGPoint(x: 1, y: 1)
        gradiantLayer.frame = self.bounds
        self.layer.insertSublayer(gradiantLayer, at: 0)
        
    }
    
}
