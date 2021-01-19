//
//  UIAnimationViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/19.
//

import UIKit

class UIAnimationViewController: UIViewController {

    var animationView:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UIAnimationView";
        self.view.backgroundColor = UIColor.white;
        //初始化视图
        animationView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        //设置背景色
        animationView?.backgroundColor = UIColor.red
        //将其添加到当前界面视图上
        self.view.addSubview(animationView!)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        UIView.animate(withDuration: 1, delay: 2, options: [UIViewAnimationOptions.repeat], animations: {
//            self.animationView?.backgroundColor = UIColor.blue
//            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.animationView?.center = CGPoint(x: 150, y: 350)
            }, completion: nil)
    }
    

   
}
