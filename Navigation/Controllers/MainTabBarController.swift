import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedNavigationController = UINavigationController(
            rootViewController: FeedViewController()
        )
        
        let profileNavigationController = UINavigationController(
            rootViewController: ProfileViewController()
        )
        
        viewControllers = [
            feedNavigationController,
            profileNavigationController
        ]
        
        let ItemFeed = UITabBarItem(
            title: "Feed",
            image: UIImage(systemName: "newspaper"),
            tag: 0
        )
        
        let ItemProfile = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person.circle.fill"),
            tag: 0
        )
        
        feedNavigationController.tabBarItem = ItemFeed
        profileNavigationController.tabBarItem = ItemProfile
        
    }
}

