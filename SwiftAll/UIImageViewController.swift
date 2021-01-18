//
//  UIImageViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class UIImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "UIImageView";
        self.view.backgroundColor = UIColor.white;
        
        let imageView = UIImageView();
        imageView.frame = CGRect.init(x: 30, y: 100, width: 200, height: 200)
        let image = UIImage(named: "image");
        imageView.image = image;
        self.view.addSubview(imageView);
        
        //创建一个数组 用于存放动画图片
        var imageArry = Array<UIImage>()
        //进行图片的循环创建
        for index in 1...8{
            //使用格式化的字符串进行创建
            let birdImage = UIImage(named: "bird\(index)")
            //将创建的图片添加进数组中
            imageArry.append(birdImage!)
        }
        //创建UIImageView
        let birdImageView = UIImageView(frame: CGRect(x: 30, y: 350, width: 200, height: 100))
        //设置动画数组
        birdImageView.animationImages = imageArry
        //设置动画播放时长
        birdImageView.animationDuration = 3
        //设置动画播放次数
        birdImageView.animationRepeatCount = 0
        self.view.addSubview(birdImageView)
        //开始播放动画
        birdImageView.startAnimating()
        
    }
    
}
