//
//  SQLiteViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/19.
//

import UIKit

class SQLiteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        ObjectiveC_Hander.runNormalSql("create table Student(name text PRIMARY KEY,age integer DEFAULT 15)")
        ObjectiveC_Hander.runNormalSql("insert into Student(name,age) values(\"珲少\",25)")
        ObjectiveC_Hander.selectSql()
    }
    

  

}
