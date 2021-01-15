//
//  NSArrayViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/14.
//

import UIKit

class NSArrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "NSArray";
        self.view.backgroundColor = UIColor.white;
        
        //int型数组
        var arr1:[Int];
        var arr2:Array<Int>
        //创建空数组
        arr1 = [];
        arr2 = Array()
        arr1 = [1,2,3]
        arr2 = Array(arrayLiteral: 1,2,3);
        print(arr1,arr2);
        
        let arr3 = ["您好","swift"];
        print(arr3);
        //数组是否为空
        if arr3.isEmpty {
            print("arr3为空数组")
        }else{
            print("arr3不为空数组")
        }
        //遍历数组
        let arr4 = ["aa", "bb", "cc"]
        //下标遍历
        for i in 0..<arr4.count {
            print(arr4[i])
        }
        //for in遍历
        for str in arr4 {
            print(str)
        }
        //枚举遍历
        for str2 in arr4.enumerated() {
            print(str2.offset,str2.element)
        }
        
        var arr5 = ["aa", "bb", "cc"];
        //增加数据
        arr5.append("dd")
        print(arr5)
        //修改元素
        arr5[0] = "AA";
        print(arr5);
        //删除元素
        arr5.remove(at: 0);
        print(arr5);
        //删除所有元素
        arr5.removeAll()
        print(arr5)
        
        
        
        
    }
    


}
