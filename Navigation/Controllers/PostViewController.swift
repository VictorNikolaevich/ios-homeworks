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
    }
}
