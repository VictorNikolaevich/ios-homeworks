import UIKit

class InfoViewController: UIViewController {
    
    let labelTextInfoViewController: UILabel = {
        
        let labelTextInfoViewController = UILabel()
        labelTextInfoViewController.textAlignment = .center
        labelTextInfoViewController.text = "InfoViewController"
        labelTextInfoViewController.frame.size = CGSize(
            width: 200,
            height: 20
        )
        return labelTextInfoViewController
        
    }()
    
    let buttonAlert: UIButton = {
        
        let buttonAlert = UIButton()
        buttonAlert.backgroundColor = .systemCyan
        buttonAlert.layer.cornerRadius = 25
        buttonAlert.setTitle(
            "AlertController",
            for: .normal
        )
        buttonAlert.frame.size = CGSize(
            width: 200,
            height: 50
        )
        buttonAlert.addTarget(
            self,
            action: #selector(goToAlertController),
            for: .touchUpInside
        )
        return buttonAlert
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        view.addSubview(labelTextInfoViewController)
        labelTextInfoViewController.center = CGPoint(
            x: view.bounds.width / 2,
            y: 20
        )
        view.addSubview(buttonAlert)
        buttonAlert.center = view.center
        
    }
    
    @objc func goToAlertController() {
        
        let alert = UIAlertController(
            title: "Title",
            message: "Hello World!",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "Dismiss",
            style: .cancel,
            handler: { action in
                print("Tapped Dismiss")
            }))
        
        alert.addAction(UIAlertAction(
            title: "Delete",
            style: .destructive,
            handler: { action in
                print("Tapped Delete")
            }))
        
        present(
            alert,
            animated: true
        )
    }
}
