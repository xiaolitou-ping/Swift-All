//
//  UITableViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UITableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "UITableView";
        self.view.backgroundColor = UIColor.white;
        
        //创建UITableView实例
        let tableView = UITableView(frame: self.view.frame, style: .grouped)
        self.view.addSubview(tableView)
        //设置数据源与代理
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //获取到载体Cell
        let cellid = "testCellID"
        var cell:ProductTableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? ProductTableViewCell
         if cell==nil {
             cell = ProductTableViewCell(style: .subtitle, reuseIdentifier: cellid)
         }
       
        return cell!
    }
    

}
