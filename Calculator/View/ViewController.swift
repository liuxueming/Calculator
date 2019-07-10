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
    lazy var alertView:CustomAlertView = CustomAlertView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupAlertView()
    }
    func setupAlertView() -> Void {
        alertView.translatesAutoresizingMaskIntoConstraints = false
        alertView.backgroundColor = UIColor.white
        view.addSubview(alertView)
        alertView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
        alertView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
        alertView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true;
        alertView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true;
    }
    @IBAction func clickButton(_ sender: RoundCornerButton) {
        previousValue = currentValue
        currentValue = String(format: "%d", sender.tag)
        if previousValue == "14" && currentValue == "0"{
            alertView.show()
        }
    }
   
}

