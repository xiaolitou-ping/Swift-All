//
//  KingfisherViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/22.
//

import UIKit

class KingfisherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Kingfisher"
        self.view.backgroundColor = UIColor.white;
        
        
        let url = URL(string: "http://mvimg2.meitudata.com/55fe3d94efbc12843.jpg")
        let imageView = UIImageView();
        imageView.frame = CGRect.init(x: 30, y: 100, width: 200, height: 200)
        self.view.addSubview(imageView);
        imageView.kf.setImage(with: url)
    }
    

   

}
