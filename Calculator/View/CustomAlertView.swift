//
//  CustomAlertView.swift
//  Calculator
//
//  Created by xueming.liu on 2019/7/10.
//  Copyright © 2019 xueming.liu. All rights reserved.
//

import UIKit

@IBDesignable class CustomAlertView: UIView {
    lazy var image:UIImageView = UIImageView()
    lazy var tips:UILabel = UILabel()
    lazy var retry:UIButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.isHidden = true
        setupCornerRadius()
        setupSubviews()
        addSubviewsConstraints()
    }
    @objc private func composeBtnClick(btn: UIButton) {
        dismiss()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func setupCornerRadius() -> Void {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10.0
    }
    func setupSubviews() -> Void {
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage.init(named: "error")
        addSubview(image)
        
        tips.translatesAutoresizingMaskIntoConstraints = false
        tips.numberOfLines = 0
        tips.text = "分母不能为0分母n分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0不能为0分母不能为0分母不能为0分分母不能为0分母不能为0分母不能为0母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母n分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0不能为0分母不能为0分母不能为0分分母不能为"
        tips.textAlignment = .center
        addSubview(tips)
        
        retry.translatesAutoresizingMaskIntoConstraints = false
        retry.backgroundColor = UIColor.blue
        retry.setTitle("重试", for: .normal)
        retry.layer.masksToBounds = true
        retry.layer.cornerRadius = 6.0
        retry.addTarget(self, action:#selector(composeBtnClick), for: .touchUpInside)
        addSubview(retry)
    }
    func addSubviewsConstraints() -> Void {
        image.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        image.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        image.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        image.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true;
        
        tips.heightAnchor.constraint(greaterThanOrEqualToConstant: 30.0).isActive = true
        tips.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        tips.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        tips.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10).isActive = true
        tips.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true;
        
        retry.heightAnchor.constraint(equalToConstant:45.0).isActive = true
        retry.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
        retry.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30).isActive = true
        retry.topAnchor.constraint(equalTo: tips.bottomAnchor, constant: 10).isActive = true
        retry.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }
    func show() -> Void {
        UIView.animate(withDuration: 0.5) {
            self.isHidden = false
        }
    }
    func dismiss() -> Void {
        UIView.animate(withDuration: 1.0) {
            self.isHidden = true
        }
    }
}
