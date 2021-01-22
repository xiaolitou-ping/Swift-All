//
//  AlamofireViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/20.
//

import UIKit
import Alamofire

class AlamofireViewController: UIViewController {

    var PhoneTextFile:UITextField!
    var PSWTextFile:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Alamofire"
        self.view.backgroundColor = UIColor.white;
        
        let imageView = UIImageView();
        imageView.frame = CGRect.init(x: self.view.frame.size.width/2-50, y: 109, width: 100, height: 100)
        let image = UIImage(named: "image");
        imageView.image = image;
        imageView.layer.cornerRadius = 50.0
        imageView.layer.masksToBounds = true
        self.view.addSubview(imageView);

        PhoneTextFile = UITextField();
        PhoneTextFile.frame = CGRect.init(x: 47, y: 232, width: self.view.frame.size.width-47*2, height: 42);
        PhoneTextFile.textColor = UIColor.black;
        PhoneTextFile.textAlignment = NSTextAlignment.left;
        PhoneTextFile.placeholder  = "请输入用户名"
        PhoneTextFile.borderStyle = .roundedRect;
        PhoneTextFile.isSecureTextEntry = false;
        //创建左视图
        let imageView1 = UIImageView(image: UIImage(named: "login_icon_user_n"))
        imageView1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        PhoneTextFile.leftView = imageView1;
        PhoneTextFile.leftViewMode = UITextFieldViewMode.always;
        PhoneTextFile.text = "17688901433"
        self.view.addSubview(PhoneTextFile);

        PSWTextFile = UITextField();
        PSWTextFile.frame = CGRect.init(x: 47, y: 304, width: self.view.frame.size.width-47*2, height: 42);
        PSWTextFile.textColor = UIColor.black;
        PSWTextFile.textAlignment = NSTextAlignment.left;
        PSWTextFile.placeholder  = "请输入用户名"
        PSWTextFile.borderStyle = .roundedRect;
        PSWTextFile.isSecureTextEntry = false;
        //创建左视图
        let imageView2 = UIImageView(image: UIImage(named: "login_icon_user_n"))
        imageView2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        PSWTextFile.leftView = imageView2;
        PSWTextFile.leftViewMode = UITextFieldViewMode.always;
        PSWTextFile.text = "123456"
        self.view.addSubview(PSWTextFile);

        let button = UIButton.init(type: UIButtonType.system);
        button.frame = CGRect.init(x: 47, y: 376, width: self.view.frame.size.width-47*2, height: 48);
        button.setTitle("登陆", for: .normal)
        button.backgroundColor = UIColor.green
        button.titleLabel?.tintColor = UIColor.red;
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17);
        button.layer.cornerRadius = 24;
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(buttonSelectClick), for:UIControlEvents.touchUpInside);
        self.view.addSubview(button)
        
        
    }
    @objc func buttonSelectClick() {
        
        let urlStr = "http://honfan.com.cn/security/login";
        
        let param =  ["mobile":"17688901433","password":"123456","version":"V1.7.0"]
        
        AF.request(urlStr,
                   method: .post,
                   parameters: param,
                   encoder: JSONParameterEncoder.default)
            .response { response in
                debugPrint(response)
                
        }
        
    }
    
}
