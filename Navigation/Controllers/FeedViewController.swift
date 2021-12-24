import UIKit

class FeedViewController: UIViewController {
    
    let post: Post = Post(title: "Post")
    
    let buttonGoToPost: UIButton = {
        
        let buttonGoToPost = UIButton()
        buttonGoToPost.backgroundColor = .systemOrange
        buttonGoToPost.layer.cornerRadius = 25
        buttonGoToPost.frame.size = CGSize(
            width: 200,
            height: 50
        )
        buttonGoToPost.setTitle(
            "Transition to Post",
            for: .normal
        )
        buttonGoToPost.addTarget(
            self,
            action: #selector(buttonTappedToPostVC),
            for: .touchUpInside
        )
        return buttonGoToPost
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Feed"
        view.addSubview(buttonGoToPost)
        buttonGoToPost.center = view.center
        
        
    }
    
    @objc func buttonTappedToPostVC() {
        
        let postViewController = PostViewController(post: post)
        self.navigationController?.pushViewController(
            postViewController,
            animated: true
        )
        
    }
}
