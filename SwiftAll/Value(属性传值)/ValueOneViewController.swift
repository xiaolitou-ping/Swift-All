//
//  ValueOneViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class ValueOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "OneViewCon";
        self.view.backgroundColor = UIColor.white;
        
        let OneBtn = UIButton.init(type: UIButtonType.system);
        OneBtn.frame = CGRect.init(x: 20, y: 200, width: self.view.frame.size.width-40, height: 60);
        OneBtn.setTitle("button One", for: .normal)
        OneBtn.backgroundColor = UIColor.green
        OneBtn.titleLabel?.tintColor = UIColor.red;
        OneBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17);
        OneBtn.layer.cornerRadius = 30;
        OneBtn.layer.masksToBounds = true
        OneBtn.addTarget(self, action: #selector(buttonSelectClick(_:)), for:UIControlEvents.touchUpInside);
        self.view.addSubview(OneBtn)
        
        
        let TwoBtn = UIButton.init(type: UIButtonType.system);
        TwoBtn.frame = CGRect.init(x: 20, y: 270, width: self.view.frame.size.width-40, height: 60);
        TwoBtn.setTitle("button Two", for: .normal)
        TwoBtn.backgroundColor = UIColor.green
        TwoBtn.titleLabel?.tintColor = UIColor.red;
        TwoBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17);
        TwoBtn.layer.cornerRadius = 30;
        TwoBtn.layer.masksToBounds = true
        TwoBtn.addTarget(self, action: #selector(buttonSelectClick(_:)), for:UIControlEvents.touchUpInside);
        self.view.addSubview(TwoBtn)

        
    }
    @objc func buttonSelectClick(_ button:UIButton) {
       
        let two = ValueTwoViewController();
        two.valuestr = button.titleLabel?.text;
        self.navigationController!.pushViewController(two, animated: true);
        
    }
    

}
