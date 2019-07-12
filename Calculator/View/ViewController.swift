//
//  ViewController.swift
//  Calculator
//
//  Created by xueming.liu on 2019/7/9.
//  Copyright © 2019 xueming.liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    enum CalculatorButton {
        case zero
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case allClear
        case positiveAndNegativeSign
        case percent
        case plus
        case minus
        case multiply
        case divisor
        case equal
    }
    @IBOutlet weak var allClear: RoundCornerButton!
    @IBOutlet weak var resultDisplay: UILabel!
    var previousValue:CalculatorButton?
    var currentValue:CalculatorButton?
    lazy var alertView:CustomAlertView? = {
        let alert = CustomAlertView()
        return alert
    }()
    lazy var CalculatorButtonTags:Dictionary = { () -> [Int : ViewController.CalculatorButton] in
        let buttonTags = [0 : CalculatorButton.zero,
                          1 : CalculatorButton.one,
                          2 : CalculatorButton.two,
                          3 : CalculatorButton.three,
                          4 : CalculatorButton.four,
                          5 : CalculatorButton.five,
                          6 : CalculatorButton.six,
                          7 : CalculatorButton.seven,
                          8 : CalculatorButton.eight,
                          9 : CalculatorButton.nine,
                          10 : CalculatorButton.allClear,
                          11 : CalculatorButton.positiveAndNegativeSign,
                          12 : CalculatorButton.percent,
                          13 : CalculatorButton.one,
                          14 : CalculatorButton.divisor,
                          15 : CalculatorButton.multiply,
                          16 : CalculatorButton.minus,
                          17 : CalculatorButton.plus,
                          18 : CalculatorButton.equal]
        return buttonTags
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func showAlert(){
        alertView?.showAddedTo(view)
        setupAlertConstraints()
    }
    func setupAlertConstraints() {
        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        let offset:CGFloat = 30.0
        alertView?.leftAnchor.constraint(equalTo:safeAreaLayoutGuide.leftAnchor, constant: offset).isActive = true
        alertView?.rightAnchor.constraint(equalTo:safeAreaLayoutGuide.rightAnchor, constant: -offset).isActive = true
        alertView?.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true;
        alertView?.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true;
    }
    @IBAction func clickButton(_ sender: RoundCornerButton) {
        previousValue = currentValue
        currentValue = CalculatorButtonTags[sender.tag]
        if previousValue == CalculatorButton.divisor && currentValue == CalculatorButton.zero{
            showAlert()
        }
    }
}

