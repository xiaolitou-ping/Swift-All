//
//  UITextViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UITextViewController: UIViewController,UITextViewDelegate {

    var label:UILabel!
    var countLab:UILabel!
    var textView:UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "UITextView";
        self.view.backgroundColor = UIColor.white;
        
        textView = UITextView();
        textView.frame = CGRect.init(x: 20, y: 100, width: self.view.frame.size.width-40, height: 200);
        textView.delegate = self;
        textView.tag = 158;
        textView.backgroundColor = UIColor.lightGray;
        textView.font = UIFont.systemFont(ofSize: 17);
        self.view.addSubview(textView);
        
        label = UILabel()
        label.frame = CGRect.init(x: 5, y: 3, width: self.view.frame.size.width-50, height: 30);
        label.backgroundColor = UIColor.gray;
        label.text = "我是一个placeholder Label"
        label.textAlignment = NSTextAlignment.left;
        label.font = UIFont.systemFont(ofSize: 17);
        textView.addSubview(label)
        
        countLab = UILabel()
        countLab.frame = CGRect.init(x: 15, y: 170, width: self.view.frame.size.width-60, height: 30);
        countLab.text = "0/80";
        countLab.textAlignment = NSTextAlignment.right;
        countLab.font = UIFont.systemFont(ofSize: 17);
        textView.addSubview(countLab)
        
       
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView.text.isEmpty{
            label?.alpha = 1.0;
        }else{
            label?.alpha = 0;
        }
        
        if textView.text.lengthOfBytes(using: .utf8) > 80{
            return false
        }
    
        countLab.text = String(format: "%ld/80",textView.text.lengthOfBytes(using: .utf8));
        
        return true;
    }

}
