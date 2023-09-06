//
//  SettingsViewController.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var gestureView: GestureView! {
        didSet {
            super.awakeFromNib()
            let recognizer = UITapGestureRecognizer(target: gestureView, action: #selector(GestureView.didTap))
            recognizer.numberOfTapsRequired = 1
            recognizer.numberOfTouchesRequired = 2
            gestureView.addGestureRecognizer(recognizer)
            gestureView.layer.cornerRadius = 15
            gestureView.delegate = self
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
    }
    

    @IBAction func exitButtonAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}

extension SettingsViewController: GestureDelegate {
    func didTap(_ view: GestureView) {
        gestureView.backgroundColor = .black
        print("delegate didTap")
        
    }
}
