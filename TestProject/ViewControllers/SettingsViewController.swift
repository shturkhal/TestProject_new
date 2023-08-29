//
//  SettingsViewController.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
    }
    

    @IBAction func exitButtonAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
