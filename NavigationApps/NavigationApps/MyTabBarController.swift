//
//  MyTabBarController.swift
//  NavigationApps
//
//  Created by Mamikos on 22/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = ViewController()
        let secondViewController = AnotherViewController()
        
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        secondViewController.tabBarItem = UITabBarItem(title: "Menu Lain", image: .actions, tag: 1)
        
        viewControllers = [firstViewController, secondViewController]
    }
}
