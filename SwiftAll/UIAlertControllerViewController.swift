//
//  UIAlertControllerViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UIAlertControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UIAlertController";
        self.view.backgroundColor = UIColor.white;
        
        let OneBtn = UIButton.init(type: UIButtonType.system);
        OneBtn.frame = CGRect.init(x: 20, y: 200, width: self.view.frame.size.width-40, height: 60);
        OneBtn.setTitle("弹出警告框", for: .normal)
        OneBtn.backgroundColor = UIColor.green
        OneBtn.titleLabel?.tintColor = UIColor.red;
        OneBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17);
        OneBtn.layer.cornerRadius = 30;
        OneBtn.layer.masksToBounds = true
        OneBtn.tag = 21;
        OneBtn.addTarget(self, action: #selector(buttonSelectClick(_:)), for:UIControlEvents.touchUpInside);
        self.view.addSubview(OneBtn)
        
        
        let TwoBtn = UIButton.init(type: UIButtonType.system);
        TwoBtn.frame = CGRect.init(x: 20, y: 270, width: self.view.frame.size.width-40, height: 60);
        TwoBtn.setTitle("弹出抽屉", for: .normal)
        TwoBtn.backgroundColor = UIColor.green
        TwoBtn.titleLabel?.tintColor = UIColor.red;
        TwoBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17);
        TwoBtn.layer.cornerRadius = 30;
        TwoBtn.layer.masksToBounds = true
        TwoBtn.tag = 22;
        TwoBtn.addTarget(self, action: #selector(buttonSelectClick(_:)), for:UIControlEvents.touchUpInside);
        self.view.addSubview(TwoBtn)
        
       
    }
    @objc func buttonSelectClick(_ button:UIButton) {
        if button.tag == 21 {
            let alertController = UIAlertController(title: "我是警告框弹窗", message: "这里填写内容", preferredStyle: .alert)
            let alertAction1 = UIAlertAction(title: "登录", style: .default) { (action) in
                print(alertController.textFields?.first?.text ?? "未输入文字")
            }
            let alertAction2 = UIAlertAction(title: "取消", style: .cancel, handler: nil)
            
            alertController.addAction(alertAction1)
            alertController.addAction(alertAction2)
            alertController.addTextField { (textField) in
                textField.placeholder = "请输入用户名"
            }
            alertController.addTextField { (textField) in
                textField.placeholder = "请输入密码"
                //密码模式
                textField.isSecureTextEntry = true
            }
            self .present(alertController, animated: true, completion: nil)
        }else{
            //使用弹窗风格的警告控制器
            let alertController = UIAlertController(title: "我是抽屉弹窗", message: "这里填写内容", preferredStyle: .actionSheet)
            let alertAction1 = UIAlertAction(title: "确定", style: .default) { (action) in
                print(alertController.textFields?.first?.text ?? "未输入文字")
            }
            let alertAction2 = UIAlertAction(title: "取消", style: .cancel, handler: nil)
           
            alertController.addAction(alertAction1)
            alertController.addAction(alertAction2)
            self .present(alertController, animated: true, completion: nil)
        }
        
    }
    

   

}
