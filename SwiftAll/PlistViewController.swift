//
//  PlistViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/19.
//

import UIKit

class PlistViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Plist";
        self.view.backgroundColor = UIColor.white;
        
        //        //获取文件路径
        //        let path = Bundle.main.path(forResource: "MyPlist", ofType: "plist")
        //        //将文件内容读成字典
        //        let dic = NSDictionary(contentsOfFile: path!)
        //        //数据输出
        //        print(dic)
                
                //获取沙盒的用户数据目录
                let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
                //拼接上文件名
                let fileName = path! + "/MyPlist.plist"
                let dic:NSDictionary = ["name":"jaki","age":"25"]
                //进行写文件
                dic.write(toFile: fileName, atomically: true)
                //将存储的Plist文件数据进行读取
                let dicRes = NSDictionary(contentsOfFile: fileName)
                print(dicRes ?? "dicRes为nil")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
