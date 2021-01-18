//
//  UISegmentedControlViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UISegmentedControlViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UISegmentedControlViewController";
        self.view.backgroundColor = UIColor.white;
        
        //创建分部控制器实例
        let segmentedControl = UISegmentedControl(items: ["1","按钮","按钮按钮","按钮按钮按钮"])
        //设置控件位置与尺寸
        segmentedControl.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
        //设置控件风格颜色
        segmentedControl.tintColor = UIColor.blue
        //添加到当前视图
        self.view.addSubview(segmentedControl)
        
//        segmentedControl.setWidth(8, forSegmentAt: 0)
//        segmentedControl.setWidth(32, forSegmentAt: 1)
//        segmentedControl.setWidth(85, forSegmentAt: 3)
        segmentedControl.apportionsSegmentWidthsByContent  = true
        
    }
    
    func sele(seg:UISegmentedControl)  {
        print("选择了\(seg.selectedSegmentIndex)")
    }
 

}
