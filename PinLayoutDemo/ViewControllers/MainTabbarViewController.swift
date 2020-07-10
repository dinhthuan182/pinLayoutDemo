//
//  MainTabbarViewController.swift
//  PinLayoutDemo
//
//  Created by Vu Dinh Thuan on 7/10/20.
//  Copyright © 2020 Vu Dinh Thuan. All rights reserved.
//

import UIKit

class MainTabbarViewController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewController()
    // Do any additional setup after loading the view.
  }
  
  func setupViewController() {
    let homeViewController = HomeViewController()
    let homeNavigation = MainNavigationViewController(rootViewController: homeViewController)
    homeNavigation.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "icon-tabbar-home"), selectedImage: UIImage(named: "icon-tabbar-home")?.withRenderingMode(.alwaysOriginal))
    
    let sleepViewController = SleepViewController()
    let sleepNavigation = MainNavigationViewController(rootViewController: sleepViewController)
    sleepNavigation.tabBarItem = UITabBarItem(title: "Sleep", image: UIImage(named: "icon-tabbar-bedtime"), selectedImage: UIImage(named: "icon-tabbar-bedtime")?.withRenderingMode(.alwaysOriginal))
    
    let poolViewController = PoolViewController()
    let poolNavigation = MainNavigationViewController(rootViewController: poolViewController)
    poolNavigation.tabBarItem = UITabBarItem(title: "Pool", image: UIImage(named: "icon-tabbar-poop"), selectedImage: UIImage(named: "icon-tabbar-poop")?.withRenderingMode(.alwaysOriginal))
    
    self.viewControllers = [homeNavigation, sleepNavigation, poolNavigation]
  }
}
