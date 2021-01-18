//
//  UIStepperViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UIStepperViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UIStepper";
        self.view.backgroundColor = UIColor.white;
        
        //创建UIStepper实例
        let stepper = UIStepper(frame: CGRect(x: 100, y: 100, width: 0, height: 0))
        //设置控件颜色
        stepper.tintColor = UIColor.red
        //设置控件的最小值
        stepper.minimumValue = 0
        //设置控件的最大值
        stepper.maximumValue = 10
        //设置控件的步长
        stepper.stepValue = 1
        //将控件添加到当前视图
        self.view.addSubview(stepper)
        
        stepper.isContinuous = true
        stepper.autorepeat = false
        stepper.addTarget(self, action: #selector(click), for: UIControlEvents.valueChanged)
       
    }
    @objc func click(stepper:UIStepper) {
        print("步进控制器的值\(stepper.value)")
    }
    

   

}
