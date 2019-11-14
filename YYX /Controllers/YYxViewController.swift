//
//  YYxViewController.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/6/11.
//  Copyright © 2019 002. All rights reserved.
//

import UIKit
import Network
class YYxViewController: UIViewController {

    lazy var scrollView:UIScrollView = {
        //但是重复调用， Lazy 属性的代码块只会调用一次
        return UIScrollView()
        
    }()
    lazy var mainContainerView:UIView = {
       
        let aa = UIView()
        self.scrollView.addSubview(aa)
        
        aa.anchorEqualParentViewWithConstant(constant: 10)
        
        
        return aa
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        checkNetworkState()
        checkJailbreak()
        checkInfoPlist()
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        print("1111")//xxxxx
    }
    
    func checkNetworkState() {
        NWPathMonitor().checkNetworkStatus()
    }
    func checkJailbreak() {
        
    }
    func checkInfoPlist() {
        FileManager.default.checkInfoPlistData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
