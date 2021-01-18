//
//  UIActivityIndicatorViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UIActivityIndicatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "UIActivityIndicatorView";
        self.view.backgroundColor = UIColor.white;
        
        let activity = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorView.Style.large)
        activity.center = self.view.center;
        //开始播放
        activity.startAnimating()
        //添加到当前视图
        self.view.addSubview(activity)
        
        //设置活动指示器颜色
        activity.color = UIColor.green
    }
    

   

}
