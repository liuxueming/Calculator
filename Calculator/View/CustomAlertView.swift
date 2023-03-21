//
//  CustomAlertView.swift
//  Calculator
//
//  Created by xueming.liu on 2019/7/10.
//  Copyright © 2023 xueming.liu. All rights reserved.
//

import UIKit

class CustomAlertView: UIView {
    var image: UIImageView = UIImageView()
    var tips: UILabel = UILabel()
    var retry: UIButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.white
        setupCornerRadius()
        setupSubviews()
        addSubviewsConstraints()
    }
    
    @objc private func btnClick(btn: UIButton) {
        dismiss()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupCornerRadius() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10.0
    }
    
    func setupSubviews() {
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage.init(named: "error")
        addSubview(image)
        tips.translatesAutoresizingMaskIntoConstraints = false
        tips.numberOfLines = 0
        tips.text = "分母不能为0分母n分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0不能为0分母不能为0分母不能为0分分母不能为0分母不能为0分母不能为0母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母n分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0不能为0分母不能为0分母不能为0分分母不能为分母不能为0分母n分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0不能为0分母不能为0分母不能为0分分母不能为0分母不能为0分母不能为0母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母n分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0不能为0分母不能为0分母不能为0分分母不能为分母不能为0分母n分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0不能为0分母不能为0分母不能为0分分母不能为0分母不能为0分母不能为0母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母n分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0分母不能为0不能为0分母不能为0分母不能为0分分母不能为"
        tips.textAlignment = .center
        addSubview(tips)
        retry.translatesAutoresizingMaskIntoConstraints = false
        retry.backgroundColor = UIColor.blue
        retry.setTitle("重试", for: .normal)
        retry.layer.masksToBounds = true
        retry.layer.cornerRadius = 6.0
        retry.addTarget(self, action:#selector(btnClick), for: .touchUpInside)
        addSubview(retry)
    }
    
    func addSubviewsConstraints() {
        let imageSideLength:CGFloat = 60.0
        let imageOffset:CGFloat = 10.0
        image.heightAnchor.constraint(equalToConstant: imageSideLength).isActive = true
        image.widthAnchor.constraint(equalToConstant: imageSideLength).isActive = true
        image.topAnchor.constraint(equalTo: self.topAnchor, constant: imageOffset).isActive = true
        image.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true;
        let tipsMaxHeight:CGFloat = 220.0
        let tipsOffset:CGFloat = 10.0
        tips.heightAnchor.constraint(lessThanOrEqualToConstant: tipsMaxHeight).isActive = true
        tips.leftAnchor.constraint(equalTo: self.leftAnchor, constant: tipsOffset).isActive = true
        tips.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -tipsOffset).isActive = true
        tips.topAnchor.constraint(equalTo: image.bottomAnchor, constant: tipsOffset).isActive = true
        tips.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true;
        let retryHeight:CGFloat = 45.0
        let retryLeftAndRightOffset:CGFloat = 30.0
        let retryTopAndBottomOffset:CGFloat = 10.0
        retry.heightAnchor.constraint(equalToConstant:retryHeight).isActive = true
        retry.leftAnchor.constraint(equalTo: self.leftAnchor, constant: retryLeftAndRightOffset).isActive = true
        retry.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -retryLeftAndRightOffset).isActive = true
        retry.topAnchor.constraint(equalTo: tips.bottomAnchor, constant: retryTopAndBottomOffset).isActive = true
        retry.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -retryTopAndBottomOffset).isActive = true
    }
    
    func showAddedTo(_ view: UIView) {
        UIView.animate(withDuration: 0.5) {
            view.addSubview(self)
            self.isHidden = false
        }
    }
    
    func dismiss() {
        UIView.animate(withDuration: 1.0, animations: {
            self.isHidden = true
        }) { (true) in
            self.removeFromSuperview()
        }
    }
}
