//
//  ViewController.swift
//  SwiftText_01
//
//  Created by 启洋信息 on 16/6/20.
//  Copyright © 2016年 启洋信息. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button = UIButton()
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.greenColor()
        
        button = UIButton.init(type: UIButtonType.Custom)
        button.frame = CGRectMake(100, 100, 100, 30)
        self.view.addSubview(button)
        button.setTitle("button", forState: UIControlState.Normal)
        button.addTarget(self, action: #selector(ViewController.click), forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.grayColor()
        
        label = UILabel.init(frame: CGRectMake(100, 150, 150, 20))
        label.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(label)
    }
    func click()->Void
    {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

