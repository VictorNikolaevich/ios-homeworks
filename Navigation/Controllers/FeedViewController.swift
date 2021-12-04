//
//  FeedViewController.swift
//  Navigation
//
//  Created by Admin on 04.12.2021.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Назначаем цвет фона и название view
        view.backgroundColor = .white
        title = "Feed"
        
        //Создаем кнопку располагаем ее на view
        let button = UIButton()
        button.setTitle("Transition to Post", for: .normal)
        button.backgroundColor = .systemOrange
        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        button.center = view.center
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(buttonTappedtoPost), for: .touchUpInside)
       
    }
    
    @objc func buttonTappedtoPost() {
        
        //Переход в PostVC по нажатию кнопки
        let postViewController = PostViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
        
    }
}
