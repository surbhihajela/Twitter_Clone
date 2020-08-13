//
//  MainTabController.swift
//  TwitterClone
//
//  Created by Surbhi Hajela on 08/08/20.
//  Copyright © 2020 Surbhi Hajela. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    //MARK : - Properties
    // MARK :- Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()

        // Do any additional setup after loading the view.
    }
    

    func configureViewControllers(){
        let feed = FeedController()
        let nav1 = templateNavogationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
        
        
        let explore = ExploreController()
        let nav2 = templateNavogationController(image: UIImage(named: "search_unselected"), rootViewController: explore)
        
        let notifications = NotificationsController()
         let nav3 = templateNavogationController(image: UIImage(named: "home_unselected"), rootViewController: notifications)
        
        let conversations = ConversationsController()
        let nav4 = templateNavogationController(image: UIImage(named: "mail"), rootViewController: conversations)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    
    }
    
    func templateNavogationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
}
