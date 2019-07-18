//
//  ViewController.swift
//  Calculator
//
//  Created by xueming.liu on 2019/7/9.
//  Copyright © 2019 xueming.liu. All rights reserved.
// 啥22

import UIKit

class ViewController: UIViewController {
    enum CalculatorButton: Int {
        case zero = 1000
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case dot
        case allClear
        case positiveAndNegativeSign
        case percent
        case divisor
        case multiply
        case minus
        case plus
        case equal
    }
    @IBOutlet weak var allClear: RoundCornerButton!
    @IBOutlet weak var resultDisplay: UILabel!
    var previousValue: CalculatorButton?
    var currentValue: CalculatorButton?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showAlert() {
        let alert = CustomAlertView()
        alert.showAddedTo(view)
        setupAlertConstraints(alert)
    }
    
    func setupAlertConstraints(_ alertView:CustomAlertView) {
        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        let offset:CGFloat = 30.0
        alertView.leftAnchor.constraint(equalTo:safeAreaLayoutGuide.leftAnchor, constant: offset).isActive = true
        alertView.rightAnchor.constraint(equalTo:safeAreaLayoutGuide.rightAnchor, constant: -offset).isActive = true
        alertView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true;
        alertView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true;
    }
    
    @IBAction func clickButton(_ sender: RoundCornerButton) {
        previousValue = currentValue
        currentValue = CalculatorButton(rawValue: sender.tag)
        if previousValue == CalculatorButton.divisor && currentValue == CalculatorButton.zero{
            showAlert()
        }
    }
}
