//
//  Tab.swift
//  SummerProject
//
//  Created by Боб rep1q on 10.08.2022.
//

import Foundation
import UIKit

class TabBarConfigurator{
    
    //MARK: - Private property
    
    private let allTab: [TabBarModel] = [.main,.favourite,.profile]
    
    //MARK: - Internal Func
    
    func configure() -> UITabBarController{
        return getTabBarController()
    }
}
    
private extension TabBarConfigurator{
    
    func getTabBarController() -> UITabBarController{
        
        let tabBarController = UITabBarController()
        tabBarController.tabBar.tintColor = .black
        tabBarController.tabBar.unselectedItemTintColor = .lightGray
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.viewControllers = getControllers()
        return tabBarController
    }
    
    func getControllers()->[UIViewController]{
        var viewControllers = [UIViewController]()
        
        allTab.forEach{
            tab in let controller = gerCurrentViewController(tab:tab)
            let tabBarItem = UITabBarItem(title: tab.title, image: tab.image, selectedImage: tab.selectedImage)
            controller.tabBarItem = tabBarItem
            viewControllers.append(controller)
        }
        return viewControllers
    }
    func gerCurrentViewController(tab: TabBarModel)->UIViewController{
        switch tab {
        case .main:
            return MainViewController()
        case .favourite:
            return FavouriteViewController()
        case .profile:
            return ProfileViewController()
        }
    }
}
