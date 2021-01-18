//
//  UITextFileViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UITextFileViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UITextFileViewController";
        self.view.backgroundColor = UIColor.white;

        let textFile = UITextField();
        textFile.frame = CGRect.init(x: 20, y: 200, width: self.view.frame.size.width-40, height: 40);
        textFile.textColor = UIColor.black;
        textFile.textAlignment = NSTextAlignment.left;
        textFile.placeholder  = "请输入用户名"
        textFile.borderStyle = .roundedRect;
        textFile.delegate = self;
        textFile.isSecureTextEntry = false;
        //创建左视图
        let imageView1 = UIImageView(image: UIImage(named: "login_icon_user_n"))
        imageView1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        textFile.leftView = imageView1;
        textFile.leftViewMode = UITextFieldViewMode.always;
        self.view.addSubview(textFile);
        
    }
    //这个方法在输入框即将进入编辑状态时被调用
    private func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true;
    }
    //这个方法在输入框已经开始编辑时被调用
    func textFieldDidBeginEditing(_ textField: UITextField){
        
    }
    //这个方法在输入框已经结束编辑时被调用
    func textFieldDidEndEditing(_ textField: UITextField){
        
    }
    //这个方法在输入框中文本发生变化时被调用
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        //如果输入框中的文字已经等于11位 则不允许在输入
//        if (textField.text?.characters.count)! >= 11 {
//            return false
//        }
        //只有0-9之间的数字可以输入
//        if string.characters.first!>="0" && string.characters.first!<="9" {
//            return true
//        }else{
//            return false
//        }
        return true;
    }
    //这个方法用户点击输入框中清除按钮会被调用
    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        return true
    }
    //这个方法用户点击键盘上Return按钮会被调用
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    

    

}
