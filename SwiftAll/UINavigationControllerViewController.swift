//
//  UINavigationControllerViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UINavigationControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "UINavigationController"
        //设置导航栏颜色
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        
        let item = UIBarButtonItem(title: "Pop", style: UIBarButtonItemStyle.plain, target: self, action: #selector(pop))
        self.navigationItem.rightBarButtonItem = item
        
    }
    @objc func pop()  {
        self.navigationController?.popViewController(animated: true)
    }

    

}
