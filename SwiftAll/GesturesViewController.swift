//
//  GesturesViewController.swift
//  SwiftAll
//
//  Created by macbook on 2021/1/18.
//

import UIKit

class GesturesViewController: UIViewController {

    var label:UILabel!
    var pinchLabel:UILabel!
    var rotationLabel:UILabel!
    var SwipeLabel:UILabel!
    var PanLabel:UILabel!
    var ScreenEdgePanLabel:UILabel!
    var LongPressLabel:UILabel!
    
    var startCenter = CGPoint.zero
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Gestures";
        self.view.backgroundColor = UIColor.white;
        
        label = UILabel()
        label.frame = CGRect.init(x: 20, y: 100, width: self.view.frame.size.width-40, height: 60);
        label.backgroundColor = UIColor.gray;
        label.text = "单击手势";
        label.textColor = UIColor.red;
        label.textAlignment = NSTextAlignment.center;
        label.font = UIFont.systemFont(ofSize: 17);
        label.isUserInteractionEnabled = true
        self.view.addSubview(label)
        //单击手势
        let tapGestures = UITapGestureRecognizer(target: self, action: #selector(handleTap(tap:)))
        label.addGestureRecognizer(tapGestures);
        
        pinchLabel = UILabel()
        pinchLabel.frame = CGRect.init(x: 20, y: 170, width: self.view.frame.size.width-40, height: 60);
        pinchLabel.backgroundColor = UIColor.gray;
        pinchLabel.text = "捏合手势";
        pinchLabel.textColor = UIColor.red;
        pinchLabel.textAlignment = NSTextAlignment.center;
        pinchLabel.font = UIFont.systemFont(ofSize: 17);
        pinchLabel.isUserInteractionEnabled = true
        self.view.addSubview(pinchLabel)
        //捏合手势
        let pinchGestures = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(pinch:)))
        pinchLabel.addGestureRecognizer(pinchGestures);
        
        rotationLabel = UILabel()
        rotationLabel.frame = CGRect.init(x: 20, y: 240, width: self.view.frame.size.width-40, height: 60);
        rotationLabel.backgroundColor = UIColor.gray;
        rotationLabel.text = "旋转手势";
        rotationLabel.textColor = UIColor.red;
        rotationLabel.textAlignment = NSTextAlignment.center;
        rotationLabel.font = UIFont.systemFont(ofSize: 17);
        rotationLabel.isUserInteractionEnabled = true
        self.view.addSubview(rotationLabel)
        //旋转手势
        let rotation = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(rotation:)))
        rotationLabel.addGestureRecognizer(rotation);
        
        SwipeLabel = UILabel()
        SwipeLabel.frame = CGRect.init(x: 20, y: 310, width: self.view.frame.size.width-40, height: 60);
        SwipeLabel.backgroundColor = UIColor.gray;
        SwipeLabel.text = "轻扫手势";
        SwipeLabel.textColor = UIColor.red;
        SwipeLabel.textAlignment = NSTextAlignment.center;
        SwipeLabel.font = UIFont.systemFont(ofSize: 17);
        SwipeLabel.isUserInteractionEnabled = true
        self.view.addSubview(SwipeLabel)
        //轻扫手势
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(swipe:)))
        SwipeLabel.addGestureRecognizer(swipe);
        
       
        PanLabel = UILabel()
        PanLabel.frame = CGRect.init(x: 20, y: 380, width: self.view.frame.size.width-40, height: 60);
        PanLabel.backgroundColor = UIColor.gray;
        PanLabel.text = "平移手势";
        PanLabel.textColor = UIColor.red;
        PanLabel.textAlignment = NSTextAlignment.center;
        PanLabel.font = UIFont.systemFont(ofSize: 17);
        PanLabel.isUserInteractionEnabled = true
        self.view.addSubview(PanLabel)
        //轻扫手势
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(pan:)))
        PanLabel.addGestureRecognizer(pan);
        
       
        ScreenEdgePanLabel = UILabel()
        ScreenEdgePanLabel.frame = CGRect.init(x: 20, y: 450, width: self.view.frame.size.width-40, height: 60);
        ScreenEdgePanLabel.backgroundColor = UIColor.gray;
        ScreenEdgePanLabel.text = "屏幕边缘平移手势";
        ScreenEdgePanLabel.textColor = UIColor.red;
        ScreenEdgePanLabel.textAlignment = NSTextAlignment.center;
        ScreenEdgePanLabel.font = UIFont.systemFont(ofSize: 17);
        ScreenEdgePanLabel.isUserInteractionEnabled = true
        self.view.addSubview(ScreenEdgePanLabel)
        //平移屏幕边缘平移手势
        let ScreenEdgePan = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handleScreenEdgePan(screenEdgePan:)))
        ScreenEdgePanLabel.addGestureRecognizer(ScreenEdgePan);
        
   
        LongPressLabel = UILabel()
        LongPressLabel.frame = CGRect.init(x: 20, y: 520, width: self.view.frame.size.width-40, height: 60);
        LongPressLabel.backgroundColor = UIColor.gray;
        LongPressLabel.text = "长按手势";
        LongPressLabel.textColor = UIColor.red;
        LongPressLabel.textAlignment = NSTextAlignment.center;
        LongPressLabel.font = UIFont.systemFont(ofSize: 17);
        LongPressLabel.isUserInteractionEnabled = true
        self.view.addSubview(LongPressLabel)
        //长按手势
        let LongPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(longPress:)))
        LongPressLabel.addGestureRecognizer(LongPress);
       
    }
    @objc func handleTap(tap:UITapGestureRecognizer)  {
        label.text = "我是单击手势";
    }
    @objc func handlePinch (pinch:UIPinchGestureRecognizer){
        if pinch.state == .began || pinch.state == .changed {
            pinchLabel.transform = pinchLabel.transform.scaledBy(x: pinch.scale, y: pinch.scale)
             pinch.scale = 1
     //            pinch.velocity 缩放速度 放大为正
         }
    }
   @objc func handleRotation(rotation:UIRotationGestureRecognizer)  {
    if rotation.state == .began || rotation.state == .changed {
        rotationLabel.transform = rotationLabel.transform.rotated(by: rotation.rotation)
         rotation.rotation = 0.0
     //            rotation.velocity 旋转速度 顺时针为正
     }
    }
    @objc func handleSwipe(swipe: UISwipeGestureRecognizer) {
        if swipe.state == .ended {
            SwipeLabel.text = "success"
        }
    }
    @objc func handlePan(pan: UIPanGestureRecognizer) {
        let translation = pan.translation(in: PanLabel.superview)
    //        pan.setTranslation(<#T##translation: CGPoint##CGPoint#>, in: <#T##UIView?#>)设置手指在某个View中的偏移量
    //        pan.velocity(in: <#T##UIView?#>)平移速度
        if pan.state == .began {
            startCenter = PanLabel.center
        }
        if pan.state != .cancelled {
            PanLabel.center = CGPoint(x: startCenter.x + translation.x, y: startCenter.y + translation.y)
        }

    }
    @objc func handleScreenEdgePan(screenEdgePan: UIScreenEdgePanGestureRecognizer) {
        let x = screenEdgePan.translation(in: view).x
        
        if screenEdgePan.state == .began || screenEdgePan.state == .changed {
            ScreenEdgePanLabel.transform = CGAffineTransform(translationX: x, y: 0)
        }else{
            UIView.animate(withDuration: 0.3) {
                self.ScreenEdgePanLabel.transform = .identity
            }
        }
    }
    @objc func handleLongPress(longPress: UILongPressGestureRecognizer) {
        if longPress.state == .began {
            view.backgroundColor = UIColor.red;
        }
    }

}
