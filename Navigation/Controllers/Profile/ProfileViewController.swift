import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView : UIView = {
        
        let profileHeaderView = ProfileHeaderView()
        return profileHeaderView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Profile"
        
    }
    
    override func viewWillLayoutSubviews() {
        
        view.addSubview(profileHeaderView)
        profileHeaderView.frame = CGRect(
            x: 0,
            y: view.safeAreaInsets.top,
            width: view.bounds.width,
            height: view.bounds.height - (view.safeAreaInsets.bottom + view.safeAreaInsets.top)
        )
        
    }
}
