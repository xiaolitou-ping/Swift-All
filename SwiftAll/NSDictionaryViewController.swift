//
//  NSDictionaryViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/14.
//

import UIKit

class NSDictionaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "NSDictionary";
        self.view.backgroundColor = UIColor.white;
        //定义字典
        let dict1 = [1:"one",2:"two",3:"three"]
        let dict2:[Int:String] = [1:"one",2:"two",3:"three"]
        let dict3:Dictionary<Int,String> = [1:"one",2:"two",3:"three"]
        print(dict1,dict2,dict3);
        
        var dict4:[String:Any] = ["name":"李平","age":18,"title":"Boss"]
        print(dict4)
        //增加
        dict4["school"] = "shenzhen university"
        print(dict4)
        //修改
        dict4["age"] = 20;
        print(dict4)
        //删除
        dict4.removeValue(forKey: "title")
        print(dict4)
        
        //遍历
        for aa in dict1 {
            print(aa);
        }
        for (key,value) in dict2{
               print("key\(key),value,\(value)");
           }
        for testKey in dict3.keys{
            print(testKey);
           }
        for testValue in dict3.values{
             print(testValue);
        }
        
        
    }
    

  

}
