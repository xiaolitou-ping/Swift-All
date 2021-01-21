//
//  SnapkitViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/20.
//

import UIKit

class SnapkitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "SnapKit"
        self.view.backgroundColor = UIColor.white;
        
        let redView = UIView();
        redView.backgroundColor = UIColor.red;
        self.view.addSubview(redView);
        
        //使用SnapKit添加约束
        redView.snp.makeConstraints { (make) in
            make.left.equalTo(20)
            make.top.equalTo(108)
            make.bottom.right.equalTo(-20)
        }
        
        let label = UILabel()
        label.text = "这是一个很长很长的字符串，有多长呢，你自己想666666666666666666666666这是一个很长很长的字符串，有多长呢，你自己想666666666666666666666666"
        label.numberOfLines = 0;
        redView.addSubview(label);
        label.snp.makeConstraints { (make) in
            make.center.equalTo(redView)
            make.width.lessThanOrEqualTo(redView).offset(-50)
        }
        //snp_updateConstraints  更新约束
        //snp_remakeConstraints  重新约束
        
    }
    

   

}
