//
//  NSStringViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/14.
//

import UIKit

class NSStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.title = "NSString";
        self.view.backgroundColor = UIColor.white;
        
        //这里要注意NSString 和 String
        //NSString
        let str1:NSString = "SwiftNSString"
        print(str1)
        //NSString转String
        print(str1 as String)
        //字符串拼接
        let str2:NSString = "hello,SwiftNSString.";
        let str3 = [NSString .localizedStringWithFormat("%@,我来了.", str2)];
        print(str3);
        //字符串比较
        let  str4:NSString = "NSString,我来了."
        let  str5:NSString = "NSString,我来了."
        if str4.isEqual(to: str5 as String) {
            print("str4=str5")
        }else{
            print("str4!=str5")
        }
        //字符串包含前缀和后缀问题
        let str6:NSString = "https://www.baidu.com";
        if str6.hasPrefix("https") {
            print("前缀包含https");
        }
        if str6.hasSuffix("com") {
            print("后缀包含com")
        }
        if str6.contains("baidu") {
            print("包含baidu");
        }
        //字符串转NSIntger
        let  str7:NSString = "1234567";
        let  int1:NSInteger = str7.integerValue
        print(int1);
        //字符串截取
        let makeRangStr = str4.substring(with: NSMakeRange(2, 3));
        let fromStr = str5.substring(from: 2);
        let toStr = (str6 as NSString).substring(to: 5);
        print("makeRangStr = ",makeRangStr,"fromStr = ",fromStr,"toStr = ",toStr);
        //字符串遍历
        for i in 0 ..< str7.length {
            print(str7.substring(with: NSMakeRange(i, 1)))
        }
        
        
        
        //String
        let str11:String = "SwiftString";
        print(str11)
        //String转NSString
        print(str11 as NSString)
        //字符串拼接
        var str12 = "hello,SwiftString.";
        str12 += "I am come.";
        print(str12);
        str12 = str12+str11;
        print(str2);
        //字符串比较
        let  str14 = "NSString,我来了."
        let  str15 = "NSString,我来了."
        if str14 == str15 {
            print("str14=str15")
        }else{
            print("str14!=str15")
        }
        //字符串包含前缀和后缀问题,这个是和NSString一样的
        let str16 = "https://www.baidu.com";
        if str16.hasPrefix("https") {
            print("前缀包含https");
        }
        if str16.hasSuffix("com") {
            print("后缀包含com")
        }
        if str16.contains("baidu") {
            print("包含baidu");
        }
        //字符串转NSIntger
        let  str17 = "1234567";
        let  int11:NSInteger = (str17 as NSString).integerValue
        print(int11);
        //获取字符串首个字符的下标  0
        let string = "Hello-Swift"
        let startIndex = string.startIndex
        let endIndex = string.endIndex
        print(startIndex,endIndex);

        
    }

    
}
