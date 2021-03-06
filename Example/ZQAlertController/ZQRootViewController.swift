//
//  ZQRootViewController.swift
//  ZQAlertControllerDemo
//
//  Created by Darren on 2018/12/30.
//  Copyright © 2018 Darren. All rights reserved.
//

import UIKit

// MARK: 根控制器
class ZQRootViewController: UIViewController {
    
    // MARK: gett & setter
    fileprivate lazy var button:UIButton = {
        let button:UIButton = UIButton.init(type: UIButton.ButtonType.custom)
        button.backgroundColor = UIColor.brown
        button.frame = CGRect.init(x: 0, y: 0, width: 90, height: 30)
        button.center = view.center
        button.setTitle("present", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(actionForButton), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    // MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: private
extension ZQRootViewController {
    fileprivate func setupView() -> Void {
        view.addSubview(self.button)
    }
}

// MARK: action
extension ZQRootViewController {
    @objc fileprivate func actionForButton() -> Void {
        let vc:ZQAlertBaseController = ZQAlertBaseController(animationStyle: ZQAlertAnimationStyle.bottom)
        vc.showAlertController()
    }
}

