//
//  WKWebView+Extension.swift
//  YYxProvingGround
//
//  Created by 呂子揚 on 2019/8/5.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView{
    func changeBackgroundColor(toWitchColor:UIColor) {
        self.isOpaque = false
        self.backgroundColor = toWitchColor
    }
}
/**
 
 https://www.jianshu.com/p/d29384454a9a
 
 (1)loadRequest()  加载请求
 (2)goBack()  网页后退
 (3)goForward()  网页前进
 (4)reload()  网页重新加载
 (5)stopLoading()  网页停止加载
 (6)title  网页标题
 (7)canGoBack  网页是否能够后退
 (8)canGoForward  网页是否能够前进
 (9)estimatedProgress  网页加载中当前的进度
 
 */
