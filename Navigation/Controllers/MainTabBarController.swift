//
//  MainTabBarController.swift
//  Navigation
//
//  Created by Admin on 04.12.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Оборачиваем ленту и профиль пользователя в UINavigationController
        let feedNavigationController = UINavigationController(rootViewController: FeedViewController())
        let profileNavigationController = UINavigationController(rootViewController: ProfileViewController())
        
        //Массив контроллеров для их отображения на экране
        viewControllers = [feedNavigationController, profileNavigationController]
        
        //Создаем кнопки ленты и профиля пользователя на TabBar
        let ItemFeed = UITabBarItem(title: "Feed", image: UIImage(systemName: "newspaper"), tag: 0)
        let ItemProfile = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle.fill"), tag: 0)
        
        //Назначаем кнопки UINavigationController чтобы они отобразились
        feedNavigationController.tabBarItem = ItemFeed
        profileNavigationController.tabBarItem = ItemProfile
        
    }
}

