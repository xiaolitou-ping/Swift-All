//
//  UISwichViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UISwichViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UISwitch";
        self.view.backgroundColor = UIColor.white;

        //实例化开关控件
        let swi = UISwitch()
        //设置控件的位置
        swi.center = CGPoint(x: 100, y: 200)
        //设置开启状态的颜色
        swi.onTintColor = UIColor.green
        //设置普通状态的颜色
        swi.tintColor = UIColor.red
        //设置开关滑块的颜色
        swi.thumbTintColor = UIColor.purple
        //设置开关初始状态
        swi.isOn = true
        //添加到当前视图上
        self.view.addSubview(swi)
        
        //添加用户交互操作
        swi.addTarget(self, action: #selector(change), for: UIControlEvents.valueChanged)
        
        //设置按钮自定义控件图片 这两个属性现在没有任何效果
        swi.onImage = UIImage(named: "image")
        swi.offImage = UIImage(named: "image")
    }
    @objc func change(swi:UISwitch)  {
        //可以从传递进来的UISwitch控件中获取开关的状态
        print("开关状态\(swi.isOn)")
    }
    


}
