//
//  InputInfoColumnView+UIView.swift
//  YYxProvingGround
//
//  Created by young.lu on 2019/8/22.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    enum columnType{
        case userName,password,verify,recommend
    }
    func editColumnView() {
         let columnBoardColor = UIColor.giveMeUIColorByHex(hex: "CCCCCC ").cgColor
        self.backgroundColor = .white
        self.layer.borderColor = columnBoardColor
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 5
        self.translatesAutoresizingMaskIntoConstraints = false


    }
    func becomeColumnView(witchColumntype:columnType, delegate:UITextFieldDelegate?){
        let dividColor:UIColor = UIColor.giveMeUIColorByHex(hex:"E6E6E6")
        
        switch witchColumntype {
        case .userName:
            let imageView = UIImageView()
            self.addSubview(imageView)
            imageView.image = UIImage(named: "输入手机号")
//            imageView.backgroundColor = .lightGray
            
            let textField = UITextField()
            self.addSubview(textField)
            textField.delegate = delegate
            textField.placeholder = HYBLoginMainViewController.textFieldPlaceholder.请输入手机号.rawValue
            
            let dividView = UIView()
            self.addSubview(dividView)
            dividView.backgroundColor = dividColor
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            textField.translatesAutoresizingMaskIntoConstraints = false
            dividView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                imageView.sameAsSuperViewTopAnchor(),
                imageView.sameAsSuperViewBottomAnchor(),
                imageView.sameAsSuperViewLeadingAnchor(),
                imageView.sameAsSuperViewHeightAnchor(),
                imageView.heightEqualWidth(),
                
                dividView.topAnchor.sameAsTopAnchor(withView: dividView.firstSuperView, marginSpace: 10),
                dividView.bottomAnchor.sameAsBottomAnchor(withView: dividView.firstSuperView, marginSpace: 10),
                dividView.leadingKissTrailing(withView: imageView),
                dividView.trailingKissLeading(withView: textField, marginSpace: 5),
                dividView.widthAnchor.constraint(equalToConstant: 2),
               
                textField.sameAsSuperViewTopAnchor(),
                textField.sameAsSuperViewBottomAnchor(),
                textField.sameAsSuperViewTrailingAnchor(),
                
                ])
            
        case .verify:
            let imageView = UIImageView()
            self.addSubview(imageView)
            imageView.image = UIImage(named: "输入验证码")
            //            imageView.backgroundColor = .lightGray
            
            let dividView = UIView()
            self.addSubview(dividView)
            dividView.backgroundColor = dividColor
            
            let textField = UITextField()
            self.addSubview(textField)
            textField.delegate = delegate
            textField.placeholder = HYBLoginMainViewController.textFieldPlaceholder.请输入验证码.rawValue
            
            let verifyButton  = UIButton()
            self.addSubview(verifyButton)
            verifyButton.setTitle("发送验证码", for: .normal)
            verifyButton.setTitleColor(UIColor.giveMeUIColorByHex(hex: "FF666666"), for: .normal)
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            textField.translatesAutoresizingMaskIntoConstraints = false
            dividView.translatesAutoresizingMaskIntoConstraints = false
            verifyButton.translatesAutoresizingMaskIntoConstraints = false
            
            
            NSLayoutConstraint.activate([
                imageView.sameAsSuperViewTopAnchor(),
                imageView.sameAsSuperViewLeadingAnchor(),
                imageView.sameAsSuperViewBottomAnchor(),
                imageView.sameAsSuperViewHeightAnchor(),
                imageView.heightEqualWidth(),
                
                dividView.topAnchor.sameAsTopAnchor(withView: dividView.firstSuperView, marginSpace: 10),
                dividView.bottomAnchor.sameAsBottomAnchor(withView: dividView.firstSuperView, marginSpace: 10),
                dividView.leadingKissTrailing(withView: imageView),
                dividView.trailingKissLeading(withView: textField, marginSpace: 5),
                dividView.widthAnchor.constraint(equalToConstant: 2),
                
                textField.sameAsSuperViewTopAnchor(),
                textField.sameAsSuperViewBottomAnchor(),
//                textField.sameAsSuperViewTrailingAnchor(),
                
    
                
                verifyButton.sameAsSuperViewTopAnchor(),
                verifyButton.sameAsSuperViewBottomAnchor(),

                verifyButton.leadingKissTrailing(withView: textField),
                verifyButton.trailingAnchor.sameAsTrailingAnchor(withView: verifyButton.firstSuperView, marginSpace: 10)
                
                
                
                ])
        case .password:
            let imageView = UIImageView()
            self.addSubview(imageView)
            imageView.image = UIImage(named: "输入密码")
            //            imageView.backgroundColor = .lightGray
            
            let dividView = UIView()
            self.addSubview(dividView)
            dividView.backgroundColor = dividColor
            
            let textField = UITextField()
            self.addSubview(textField)
            textField.delegate = delegate
            textField.placeholder = HYBLoginMainViewController.textFieldPlaceholder.passwordText.rawValue
            
            let eyeImageView = UIImageView()
            eyeImageView.image = UIImage(named: "不显示密码")
            self.addSubview(eyeImageView)
            
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            textField.translatesAutoresizingMaskIntoConstraints = false
            dividView.translatesAutoresizingMaskIntoConstraints = false
            eyeImageView.translatesAutoresizingMaskIntoConstraints = false
            
            
            NSLayoutConstraint.activate([
                imageView.sameAsSuperViewTopAnchor(),
                imageView.sameAsSuperViewLeadingAnchor(),
                imageView.sameAsSuperViewBottomAnchor(),
                imageView.sameAsSuperViewHeightAnchor(),
                imageView.heightEqualWidth(),
                
                dividView.topAnchor.sameAsTopAnchor(withView: dividView.firstSuperView, marginSpace: 10),
                dividView.bottomAnchor.sameAsBottomAnchor(withView: dividView.firstSuperView, marginSpace: 10),
                dividView.leadingKissTrailing(withView: imageView),
                dividView.trailingKissLeading(withView: textField, marginSpace: 5),
                dividView.widthAnchor.constraint(equalToConstant: 2),
                
                textField.sameAsSuperViewTopAnchor(),
                textField.sameAsSuperViewBottomAnchor(),
                
               
                
                 eyeImageView.sameAsSuperViewTopAnchor(),
                 eyeImageView.sameAsSuperViewBottomAnchor(),

                 eyeImageView.leadingKissTrailing(withView: textField),
                 eyeImageView.sameAsSuperViewTrailingAnchor(),
                 eyeImageView.widthEqualHeight()
                
                
                
                ])
        case .recommend:
            let imageView = UIImageView()
            self.addSubview(imageView)
            imageView.image = UIImage(named: "输入邀请码")
            //            imageView.backgroundColor = .lightGray
            
            let textField = UITextField()
            self.addSubview(textField)
            textField.delegate = delegate
            textField.placeholder = HYBLoginMainViewController.textFieldPlaceholder.recommendText.rawValue
            //            textField.backgroundColor = .orange
            
            let dividView = UIView()
            self.addSubview(dividView)
            dividView.backgroundColor = dividColor
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            textField.translatesAutoresizingMaskIntoConstraints = false
            dividView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                imageView.sameAsSuperViewTopAnchor(),
                imageView.sameAsSuperViewBottomAnchor(),
                imageView.sameAsSuperViewLeadingAnchor(),
                imageView.sameAsSuperViewHeightAnchor(),
                imageView.heightEqualWidth(),
                
                dividView.topAnchor.sameAsTopAnchor(withView: dividView.firstSuperView, marginSpace: 10),
                dividView.bottomAnchor.sameAsBottomAnchor(withView: dividView.firstSuperView, marginSpace: 10),
                dividView.leadingKissTrailing(withView: imageView),
                dividView.trailingKissLeading(withView: textField, marginSpace: 5),
                dividView.widthAnchor.constraint(equalToConstant: 2),
                
                textField.sameAsSuperViewTopAnchor(),
                textField.sameAsSuperViewBottomAnchor(),
                textField.sameAsSuperViewTrailingAnchor(),
                
                ])
        
        
        }
        
    }
}
