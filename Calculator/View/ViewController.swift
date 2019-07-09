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
        print(sender.tag)
    }
    @IBAction func clickRetryButton(_ sender: UIButton) {
        self.showErrorTipsView(isShow: false)
    }
}

