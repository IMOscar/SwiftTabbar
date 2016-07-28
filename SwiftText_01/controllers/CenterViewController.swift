//
//  CenterViewController.swift
//  SwiftText_01
//
//  Created by 启洋信息 on 16/7/14.
//  Copyright © 2016年 启洋信息. All rights reserved.
//

import UIKit

class CenterViewController: UIViewController {
    
    var dismissViewControllerBlock:(()->()) = {}
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.greenColor()
        let button = UIButton.init(type: UIButtonType.Custom)
        button.frame = CGRectMake(100, 100, 40, 40)
        self.view.addSubview(button)
        button.backgroundColor = UIColor.blackColor()
        button.addTarget(self, action: #selector(CenterViewController.click), forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view.
    }
    func click() -> Void {
        NSLog("sssssssssss")
        dismissViewControllerBlock()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
