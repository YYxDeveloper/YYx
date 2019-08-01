//
//  ViewController.swift
//  PageViewControllerDemo
//
//  Created by 陳韋全 on 2018/6/11.
//  Copyright © 2018年 陳韋全. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension PageViewController:PageViewControllerDelegate{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let pageViewController = segue.destination as? PageContainerViewController {
            
            // 代理 pageViewController
            pageViewController.pageViewControllerDelegate = self
        }
    }
    func pageViewController(_ pageViewController: PageContainerViewController, didUpdateNumberOfPage numberOfPage: Int) {
        print("!!@\(numberOfPage)")
        
    }
    
    func pageViewController(_ pageViewController: PageContainerViewController, didUpdatePageIndex pageIndex: Int) {
        print("!!$\(pageIndex)")
        pageControl.currentPage = pageIndex
        pageControl.updateCurrentPageDisplay()
    }
    
    
}
