//
//  RoundCornerButton.swift
//  Calculator
//
//  Created by xueming.liu on 2019/7/9.
//  Copyright © 2023 xueming.liu. All rights reserved.
//

import UIKit

@IBDesignable class RoundCornerButton: UIButton
{
    override func layoutSubviews() {
        super.layoutSubviews()
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}
