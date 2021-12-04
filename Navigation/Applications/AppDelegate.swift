//
//  AppDelegate.swift
//  Navigation
//
//  Created by Admin on 04.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    //Контейнер показывающий начальный ViewController
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        //Загрузка приложения будет начинаться с MainTabBarController
        window?.rootViewController = MainTabBarController()
        window?.makeKeyAndVisible()
        
        //Задаем только светлую тему в приложении
        window?.overrideUserInterfaceStyle = .light
        
        return true
    }

}

