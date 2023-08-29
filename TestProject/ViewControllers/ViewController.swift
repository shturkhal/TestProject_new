//
//  ViewController.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var welcomeLabel: UILabel!
    
    @IBOutlet var enterButton: UIButton!
    // завантажити вʼю
    override func loadView() {
        super.loadView()
        print(#function)
    }
    // вʼю завантажено
    override func viewDidLoad() {
        super.viewDidLoad()
        Helpers.addVerticalGradientLayer(topColor: Helpers().primaryColor, bottomColor: Helpers().secondaryColor, view: view)
        print(#function)
        enterButton.layer.cornerRadius = 12
    
    }
    // вʼю повинно зʼявитись
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    // вʼю зʼявилось
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    // вʼю повинно зникнути
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    // вʼю зникло
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    // вʼю готується змінти макет елементів
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function)
    }
    // вʼю змінило макет елементів
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(#function)
    }
    // вʼю зробить поворот екрану
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print(#function)
    }

    
    
    @IBAction func enterButtonAction(_ sender: UIButton) {
       
        
            }
}

