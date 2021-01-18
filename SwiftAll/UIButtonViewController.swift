//
//  UIButtonViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UIButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "UIButton";
        self.view.backgroundColor = UIColor.white;
        
        let button = UIButton.init(type: UIButtonType.system);
        button.frame = CGRect.init(x: 20, y: 200, width: self.view.frame.size.width-40, height: 60);
        button.setTitle("SwiftButton", for: .normal)
        button.backgroundColor = UIColor.green
        button.titleLabel?.tintColor = UIColor.red;
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17);
        button.layer.cornerRadius = 30;
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(buttonSelectClick), for:UIControlEvents.touchUpInside);
        self.view.addSubview(button)
        
    }
    @objc func buttonSelectClick() {
        print("我是一个按钮，我被点击了")
    }
    

}
