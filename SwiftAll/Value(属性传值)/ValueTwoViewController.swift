//
//  ValueTwoViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class ValueTwoViewController: UIViewController {

    var valuestr:String!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "TwoViewCon";
        self.view.backgroundColor = UIColor.white;
        
        let label:UILabel = UILabel()
        label.frame = CGRect.init(x: 20, y: 100, width: self.view.frame.size.width-40, height: 60);
        label.backgroundColor = UIColor.gray;
        label.text = valuestr;
        label.textColor = UIColor.red;
        label.textAlignment = NSTextAlignment.center;
        label.font = UIFont.systemFont(ofSize: 17);
        self.view.addSubview(label)
    }
    

    

}
