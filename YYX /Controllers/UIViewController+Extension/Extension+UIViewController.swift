//
//  Extension+ViewController.swift
//  YYxSwift_Button
//
//  Created by young lu on 2018/10/24.
//  Copyright © 2018年 young lu. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    var safelayoutGuide: UILayoutGuide {
            return self.view.safeAreaLayoutGuide
    }
    static func giveMeViewControllerFromStoryBoard(storyBoardName:String,storyBoardID:String) -> UIViewController {
        
        let storyboard = UIStoryboard.giveMeStoryBoard(storyBordFileName: storyBoardName)
        let controller = storyboard.instantiateViewController(withIdentifier: storyBoardID)
        return controller
    }
    static func giveMeViewControllerFromMainStoryBoard(storyBoardID:String) -> UIViewController {
        return UIStoryboard.giveMeMainStoryboard().instantiateViewController(withIdentifier: storyBoardID)
    }
    func addSubViewWithChildController(addSubViewController:UIViewController, toWitchView:UIView) {
        addSubViewController.view.frame.size = toWitchView.frame.size
        self.addChild(addSubViewController)
        toWitchView.addSubview(addSubViewController.view)
    }
    func addToolBoxStaticTableViewController(toWitchView:UIView,toolBoxVCType:ToolBoxManager.witchTypeViewController)  {
        var vc = UIViewController()
        switch toolBoxVCType {
        case .ToolBoxViewController:
             vc = ToolBoxManager.giveMeToolBoxViewController()
        case .StaticTableViewController:
             vc = ToolBoxManager.giveMeStaticTableViewController()
        case .StaticCollectionViewController:
             vc = ToolBoxManager.giveMeStaticCollectionViewController()
        }
         self.addSubViewWithChildController(addSubViewController: vc, toWitchView: toWitchView)
      
    }
    func addDefaultPageViewController(witchView:UIView) {
        let pVC = UIPageViewController.giveMeAPageViewController()
        self.addSubViewWithChildController(addSubViewController: pVC, toWitchView:witchView)
    }
    func addHorizontalSliderWithHeigh50(toWitchView:UIView) {
        let horizontalSlider = HorizontalSlider.giveMeHorizontalSlider()
        horizontalSlider.setupHorizontalSlider()
         self.addSubViewWithChildController(addSubViewController: horizontalSlider, toWitchView:toWitchView)
    }
    func giveMeTheWitchButton(with title:String) -> UIButton {
        var theBtn:UIButton?
        
        for subView in view.subviews{
            guard let btn  = subView as? UIButton else{ YYxErrorHandler.addAseert(erroTyperMsg: .OptionalError);continue}
            guard let btnTitle = btn.titleLabel?.text else{ YYxErrorHandler.addAseert(erroTyperMsg: .OptionalError);continue}
            guard btnTitle == title  else{ YYxErrorHandler.addAseert(erroTyperMsg: .OptionalError);continue}
            theBtn = btn
        }
        
        if let theBtn = theBtn {
            return theBtn
        }else{
            YYxErrorHandler.addAseert(erroTyperMsg: .OptionalError)
            return UIButton()
        }
    }
}
