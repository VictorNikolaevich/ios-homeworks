import UIKit

class PostViewController: UIViewController {
    
    let post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    let buttonGoBackToFeed: UIButton = {
        
        let buttonGoBackToFeed = UIButton()
        buttonGoBackToFeed.backgroundColor = .systemOrange
        buttonGoBackToFeed.layer.cornerRadius = 25
        buttonGoBackToFeed.setTitle(
            "Close window",
            for: .normal
        )
        buttonGoBackToFeed.frame.size = CGSize(
            width: 200,
            height: 50
        )
        buttonGoBackToFeed.addTarget(
            self,
            action: #selector(goBackToFeedVC),
            for: .touchUpInside
        )
        return buttonGoBackToFeed
        
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        title = post.title
        view.addSubview(buttonGoBackToFeed)
        buttonGoBackToFeed.center = view.center
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Info",
            style: .plain,
            target: self,
            action: #selector(goToInfoVC)
        )
    }
    
    @objc func goToInfoVC() {
        
        present(
            InfoViewController(),
            animated: true,
            completion: nil
        )
    }
    
    @objc func goBackToFeedVC() {
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
}
