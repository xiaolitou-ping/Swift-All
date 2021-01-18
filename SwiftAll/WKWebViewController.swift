//
//  WKWebViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController {

    var webview = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "WKWebView";
        self.view.backgroundColor = UIColor.white;

        //创建wkwebview
         let webview = WKWebView()
         webview.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
         //创建网址
         let url = NSURL(string: "https://www.cnblogs.com/laolitou-ping/")
         //创建请求
        let request = NSURLRequest(url: url! as URL)
         //加载请求
        webview.load(request as URLRequest)
         //添加wkwebview
         self.view.addSubview(webview)
    }
    

   

}
