//
//  UIProgressViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UIProgressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "UIProgressView";
        self.view.backgroundColor = UIColor.white;
        
        //创建进度条控件实例
        let progressView = UIProgressView(progressViewStyle: UIProgressViewStyle.default)
        //设置位置和宽度
        progressView.frame = CGRect(x: 20, y: 100, width: 280, height: 10)
        //设置当前进度
        progressView.progress = 0.5
        //设置已走过进度的进度条颜色
        progressView.progressTintColor = UIColor.green
        //设置未走过进度的进度条颜色
        progressView.trackTintColor = UIColor.red
        //添加到当前视图
        self.view.addSubview(progressView)
        
        progressView.progressImage = UIImage(named: "imageH")
        progressView.trackImage = UIImage(named: "imageN")
    }
    

 

}
