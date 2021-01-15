//
//  ViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView:UITableView!
    
    var swiftNameArr:NSMutableArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SWift-All";
        self.view.backgroundColor = UIColor.white;
        
        self.tableView = UITableView(frame: self.view.frame,style: .plain);
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.view.addSubview(self.tableView);
        
        //初始化数据源
        loadDatas();
    }
    func loadDatas() {
        swiftNameArr = ["NSString","NSDictionary","NSArray","UILabel"];
        self.tableView?.reloadData();
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.swiftNameArr!.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let  identifier = "swiftCell";
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier);
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: identifier);
        }
        
        cell?.textLabel?.text =  swiftNameArr![indexPath.row] as? String
        
        return cell!;
    
    }    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath.row = editingStyle第\(indexPath.row)行")
        if indexPath.row == 0 {
            let stringVC = NSStringViewController();
            self.navigationController!.pushViewController(stringVC, animated: true);
        }else if indexPath.row == 1{
            let dictionaryVC = NSDictionaryViewController();
            self.navigationController!.pushViewController(dictionaryVC, animated: true);
        }else if indexPath.row == 2{
            let arrayVC = NSArrayViewController();
            self.navigationController!.pushViewController(arrayVC, animated: true);
        }
    }

}

