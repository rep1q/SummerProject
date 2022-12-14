//
//  AppDelegate.swift
//  SummerProject
//
//  Created by Боб rep1q on 10.08.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        goToMain()
        return true
    }

    func goToMain(){
        window?.rootViewController = TabBarConfigurator().configure()
    }

}

