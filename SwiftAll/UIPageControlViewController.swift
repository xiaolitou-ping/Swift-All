//
//  UIPageControlViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UIPageControlViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UIPageControl";
        self.view.backgroundColor = UIColor.white;

        //实例化UIPageControl
        let pageControl = UIPageControl(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
        //设置页数
        pageControl.numberOfPages = 10
        //设置背景色
        pageControl.backgroundColor = UIColor.red
        //设置页码点背景色
        pageControl.pageIndicatorTintColor = UIColor.green
        //设置当前选中页码点的颜色
        pageControl.currentPageIndicatorTintColor = UIColor.blue
        //设置当前选中的页码数
        pageControl.currentPage = 3
        //添加到当前视图
        self.view.addSubview(pageControl)
        
        //添加用户交互事件
        pageControl.addTarget(self, action: #selector(change), for: UIControl.Event.valueChanged)
       
    }
    @objc func change(pageControl:UIPageControl)  {
        print("当前所在页码：\(pageControl.currentPage)")
    }
    
    

  
}
