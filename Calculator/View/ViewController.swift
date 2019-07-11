//
//  ViewController.swift
//  Calculator
//
//  Created by xueming.liu on 2019/7/9.
//  Copyright © 2019 xueming.liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var allClear: RoundCornerButton!
    @IBOutlet weak var resultDisplay: UILabel!
    var previousValue:String = ""
    var currentValue:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        setupAlertView()
    }
   
    @IBAction func clickButton(_ sender: RoundCornerButton) {
        previousValue = currentValue
        currentValue = String(format: "%d", sender.tag)
        if previousValue == "14" && currentValue == "0"{
            CustomAlertView().showAddedTo(view)
        }
    }
   
}

