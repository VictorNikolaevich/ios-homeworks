//
//  InfoViewController.swift
//  Navigation
//
//  Created by Admin on 04.12.2021.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Задаем красный цвет фона для view
        view.backgroundColor = .red
        
        //Задаем Label который станет названием для view
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
        label.center = CGPoint(x: view.bounds.width/2, y: 20)
        label.textAlignment = .center
        label.text = "InfoViewController"
        self.view.addSubview(label)
        
        //Задаем кнопку для вызова UIAlertController
        let button = UIButton()
        button.setTitle("AlertController", for: .normal)
        button.backgroundColor = .systemCyan
        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        button.center = view.center
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(goToAlertController), for: .touchUpInside)
    }
    
    @objc func goToAlertController() {
        
        //Экземпляр класса UIAlertController
        let alert = UIAlertController(title: "Title", message: "Hello World!", preferredStyle: .alert)
        
        //Кнопки выхода из окна сообщения
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { action in
            print("Tapped Dismiss")
        }))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { action in
            print("Tapped Delete")
        }))
        
        //Функция отображения UIAlertController перед глазами
        present(alert, animated: true)
    }
}
