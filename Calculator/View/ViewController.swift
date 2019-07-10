//
//  ViewController.swift
//  Calculator
//
//  Created by xueming.liu on 2019/7/9.
//  Copyright © 2019 xueming.liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorTips: UIView!
    @IBOutlet weak var allClear: RoundCornerButton!
    @IBOutlet weak var resultDisplay: UILabel!
    var previousValue:String = ""
    var currentValue:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func showErrorTipsView(isShow:Bool) -> Void {
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.0, options: [], animations: { () -> Void in
            self.errorTips.isHidden = !isShow
        }, completion: nil)
    }
    @IBAction func clickButton(_ sender: RoundCornerButton) {
        previousValue = currentValue
        currentValue = String(format: "%d", sender.tag)
        if previousValue == "14" && currentValue == "0"{
            showErrorTipsView(isShow: true)
        }
    }
    @IBAction func clickRetryButton(_ sender: UIButton) {
        showErrorTipsView(isShow: false)
    }
}

