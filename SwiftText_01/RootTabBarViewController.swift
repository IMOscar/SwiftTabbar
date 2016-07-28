//
//  RootTabBarViewController.swift
//  SwiftText_01
//
//  Created by 启洋信息 on 16/7/14.
//  Copyright © 2016年 启洋信息. All rights reserved.
//

import UIKit

class RootTabBarViewController: UITabBarController {
    
    let btnIndexCenter = 2
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addAllChildViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Mark 添加子视图控制器
    func addAllChildViewController()->Void {
        addChildVC(FirstViewController(), title: "主页", image: "tabbar_home", selectedImage: "tabbar_home_selected")
        addChildVC(SecondViewController(), title: "消息", image: "tabbar_message_center", selectedImage: "tabbar_message_center_highlighted")
        addCenterButton(CenterViewController(), imageName: "tabbar_compose_button", title: "+")
        addChildVC(ThirdViewController(), title: "发现", image: "tabbar_discover", selectedImage: "tabbar_discover_selected")
        addChildVC(ForthViewController(), title: "我", image: "tabbar_profile", selectedImage: "tabbar_profile_selected")
    }
    
    func addChildVC (childVC:UIViewController, title:String, image: String ,selectedImage:String) ->Void {
        //
        childVC.tabBarItem.title = title
        //
        childVC.tabBarItem.image = UIImage(named: image)
        // 设置图片和字体颜色相同
        childVC.tabBarItem.selectedImage = UIImage(named: selectedImage)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        // 设置点击之后字体颜色
        childVC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orangeColor()], forState: UIControlState.Selected)
        // 设置导航控制器
        let childNav = UINavigationController.init(rootViewController: childVC)
        addChildViewController(childNav)
    }
    
    func addCenterButton( centerVC:UIViewController, imageName:String,title:String)->Void{
//        centerVC.view.backgroundColor = UIColor.whiteColor()
        let btnImage = UIImage(named: imageName)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        centerVC.tabBarItem.image = btnImage
        centerVC.tabBarItem.tag = btnIndexCenter
        
        //设置图片位置
        centerVC.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0)
        //设置主视图控制器
        let centerNav = UINavigationController(rootViewController:centerVC)
        addChildViewController(centerNav)
    }
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        switch item.tag {
        case btnIndexCenter: presentVC()
        default:
            break
        }
    }
    func presentVC() -> Void {
        let currentSelectedIndex = selectedIndex
        let centerVC = CenterViewController()
        centerVC.dismissViewControllerBlock = {[weak self] in self?.selectedIndex = currentSelectedIndex}
        self.presentViewController(centerVC, animated: true, completion: nil)
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
