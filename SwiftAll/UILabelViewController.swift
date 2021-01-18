//
//  UILabelViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UILabelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "UILabel";
        self.view.backgroundColor = UIColor.white;
        
        let label:UILabel = UILabel()
        label.frame = CGRect.init(x: 20, y: 100, width: self.view.frame.size.width-40, height: 60);
        label.backgroundColor = UIColor.gray;
        label.text = "我是UILabel"
        label.textColor = UIColor.red;
        label.textAlignment = NSTextAlignment.center;
        label.font = UIFont.systemFont(ofSize: 17);
        self.view.addSubview(label)
        
        
    }
    
}
