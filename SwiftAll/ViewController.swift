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
        swiftNameArr = ["NSString","NSDictionary","NSArray","function","UILabel","UIButton","UITextFile","UITextView","UIImageView","Gestures","UISlider","UISWich","UIActivityIndicatorView","WKWebView","UIPageControl","UISegmentedControl","UIProgressView","UIStepper","UIPickerView","UIDatePicker","UISearchBar","正向传值","代理传值","闭包传值","UINavigationController","UIAlertController","UIScrollView","UITableView","UICollectionView","UIViewAnimation","GIFAnimation","UserDefaults","Plist","NSKeyedArchiver","SQLite","CoreData","SnapKit","Alamofire,SwiftyJSON","Kingfisher","RxSwift"];
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
        }else if indexPath.row == 3{
            let funcVC = FuncViewController();
            self.navigationController!.pushViewController(funcVC, animated: true);
        }else if indexPath.row == 4{
            let labelVC = UILabelViewController();
            self.navigationController!.pushViewController(labelVC, animated: true);
        }else if indexPath.row == 5{
            let buttonVC = UIButtonViewController();
            self.navigationController!.pushViewController(buttonVC, animated: true);
        }else if indexPath.row == 6{
            let textFileVC = UITextFileViewController();
            self.navigationController!.pushViewController(textFileVC, animated: true);
        }else if indexPath.row == 7{
            let textViewVC = UITextViewController();
            self.navigationController!.pushViewController(textViewVC, animated: true);
        }else if indexPath.row == 8{
            let imageVC = UIImageViewController();
            self.navigationController!.pushViewController(imageVC, animated: true);
        }else if indexPath.row == 9{
            let gesturesVC = GesturesViewController();
            self.navigationController!.pushViewController(gesturesVC, animated: true);
        }else if indexPath.row == 10{
            let sliderVC = UISliderViewController();
            self.navigationController!.pushViewController(sliderVC, animated: true);
        }else if indexPath.row == 11{
            let swichVC = UISwichViewController();
            self.navigationController!.pushViewController(swichVC, animated: true);
        }else if indexPath.row == 12{
            let activityIndicatorVC = UIActivityIndicatorViewController();
            self.navigationController!.pushViewController(activityIndicatorVC, animated: true);
        }else if indexPath.row == 13{
            let webVC = WKWebViewController();
            self.navigationController!.pushViewController(webVC, animated: true);
        }else if indexPath.row == 14{
            let pageViewVC = UIPageControlViewController();
            self.navigationController!.pushViewController(pageViewVC, animated: true);
        }else if indexPath.row == 15{
            let segmentVC = UISegmentedControlViewController();
            self.navigationController!.pushViewController(segmentVC, animated: true);
        }else if indexPath.row == 16{
            let progressVC = UIProgressViewController();
            self.navigationController!.pushViewController(progressVC, animated: true);
        }else if indexPath.row == 17{
            let StepperVC = UIStepperViewController();
            self.navigationController!.pushViewController(StepperVC, animated: true);
        }else if indexPath.row == 18{
            let pickViewVC = UIPickerViewController();
            self.navigationController!.pushViewController(pickViewVC, animated: true);
        }else if indexPath.row == 19{
            let datePickVC = UIDatePickerViewController();
            self.navigationController!.pushViewController(datePickVC, animated: true);
        }else if indexPath.row == 20{
            let searchBarVC = UISearchBarViewController();
            self.navigationController!.pushViewController(searchBarVC, animated: true);
        }else if indexPath.row == 21{
            let value = ValueOneViewController();
            self.navigationController!.pushViewController(value, animated: true);
        }else if indexPath.row == 22{
            let delegate = DelegateOneViewController();
            self.navigationController!.pushViewController(delegate, animated: true);
        }else if indexPath.row == 23{
            let closure = ClosureOneViewController();
            self.navigationController!.pushViewController(closure, animated: true);
        }else if indexPath.row == 24{
            let navigationControllerVC = UINavigationControllerViewController();
            self.navigationController!.pushViewController(navigationControllerVC, animated: true);
        }else if indexPath.row == 25{
            let alertControllerVC = UIAlertControllerViewController();
            self.navigationController!.pushViewController(alertControllerVC, animated: true);
        }else if indexPath.row == 26{
            let scrollViewVC = UIScrollViewController();
            self.navigationController!.pushViewController(scrollViewVC, animated: true);
        }else if indexPath.row == 27{
            let tableViewVC = UITableViewController();
            self.navigationController!.pushViewController(tableViewVC, animated: true);
        }else if indexPath.row == 28{
            let collectionVC = UICollectionViewController();
            self.navigationController!.pushViewController(collectionVC, animated: true);
        }
    }

}

