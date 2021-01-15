//
//  FuncViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/15.
//

import UIKit

class FuncViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "function"
        
        self.myFunc1()
        print(self.myFunc2());
        self.myFunc3()
        print(self.myfunc4(param: 5))
        print(self.myfunc4(param: 18))
        print(self.myfunc5(param1: 2, param2: 65));
        myFunc6(param1: 10,param3:10)
        myFunc7(param: 1,2,3,4,5)
    }
    //无参无返回值的函数
    func myFunc1() -> Void {
        print("无参无返回值")
    }
    //无参数有返回值的函数
    func myFunc2()->String{
        return "无参数有返回值的函数"
    }
    //无参无返回值的函数，省略返回值
    func myFunc3() {
        print("省略返回值")
    }
    //有参数有返回值
    func myfunc4(param:Int) -> String {
        if param > 10 {
            return "大于10";
        }else{
            return "小于10";
        }
    }
    //多参数函数
    func myfunc5(param1: Int,param2: Int) {
        let param = param1+param2;
        print(param)
    }
    //默认参数param2的值为10
    func myFunc6(param1:Int,param2:Int=10 ,param3:Int)  {
        let param = param1+param2+param3
        print(param)
    }
    //参数数量不定的函数
    func myFunc7(param:Int...){
        var sum=0;
        for count in param {
            sum+=count
        }
        print(sum)
    }

  

}
