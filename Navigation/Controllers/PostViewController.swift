//
//  PostViewController.swift
//  Navigation
//
//  Created by Admin on 04.12.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    //Инициализируем Post, чтобы его можно было задать в FeedVC
    let post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Назначаем цвет фона и название view
        view.backgroundColor = .green
        title = post.title
        
        //Добавлен правый Bar Button Item для перехода в InfoVC
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(goToInfoVC))
        
        //Кнопка для возвращения обратно в FeedViewController
        let button = UIButton()
        button.setTitle("Close window", for: .normal)
        button.backgroundColor = .systemOrange
        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        button.center = view.center
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(goBackToFeedVC), for: .touchUpInside)
        
    }
    
    @objc func goToInfoVC() {
        
        //Переход по нажатию кнопки на InfoViewController
        present(InfoViewController(), animated: true, completion: nil)
        
    }
    
    @objc func goBackToFeedVC() {
        
        //Возвращаемся обратно в FeedViewController
        self.navigationController?.popToRootViewController(animated: true)
        
    }
}
