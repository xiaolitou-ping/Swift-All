//
//  DelegateOneViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit
//第四步：遵守协议twoControllerDelegate
class DelegateOneViewController: UIViewController,twoControllerDelegate {
 
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "DelegeteOneViewCon";
        self.view.backgroundColor = UIColor.white;
        
        let OneBtn = UIButton.init(type: UIButtonType.system);
        OneBtn.frame = CGRect.init(x: 20, y: 200, width: self.view.frame.size.width-40, height: 60);
        OneBtn.setTitle("One", for: .normal)
        OneBtn.backgroundColor = UIColor.green
        OneBtn.titleLabel?.tintColor = UIColor.red;
        OneBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17);
        OneBtn.layer.cornerRadius = 30;
        OneBtn.layer.masksToBounds = true
        OneBtn.addTarget(self, action: #selector(buttonSelectClick(_:)), for:UIControlEvents.touchUpInside);
        self.view.addSubview(OneBtn)
        
        label = UILabel()
        label.frame = CGRect.init(x: 20, y: 270, width: self.view.frame.size.width-40, height: 60);
        label.backgroundColor = UIColor.gray;
        label.textColor = UIColor.red;
        label.textAlignment = NSTextAlignment.center;
        label.font = UIFont.systemFont(ofSize: 17);
        self.view.addSubview(label)
        
    }
    @objc func buttonSelectClick(_ button:UIButton) {
       
        let two = DelegateTwoViewController();
        //第五步：设置代理的对象
        two.delegate = self;
        self.navigationController!.pushViewController(two, animated: true);
    }
   //twoControllerDelegate
   //第六步：实现代理
    func SecDelegateSenderValue(str: String) {
        label.text = str;
    }
    
    
}
