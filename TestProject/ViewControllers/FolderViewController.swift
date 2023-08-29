//
//  FolderViewController.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import UIKit

class FolderViewController: UIViewController {

    
    
    @IBOutlet var imageView: UIImageView!
    
    
    override func loadView() {
        super.loadView()

        imageView.layer.cornerRadius = 15
        imageView.backgroundColor = .lightGray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        Helpers.addVerticalGradientLayer(topColor: .systemPink, bottomColor: .lightGray, view: view)
        
        
    }
    

    @IBAction func changePictureButton(_ sender: UIButton) {
        sender.setTitle("Change image", for: .normal)
        // 1) отримати API
        let api = "https://picsum.photos/300/400"
        // 2) створити URL
        guard let apiUrl = URL(string: api) else {
            fatalError("some Error")
        }
        // 3) ініціалізувати сессію URL Session
        let session = URLSession(configuration: .default)
        // 4) створити dataTask
        let task = session.dataTask(with: apiUrl) {(data, response, error) in
            // 5) опрацювати отримані дані
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async {
                // data - .jpg
                self.imageView.image = UIImage(data: data)
                self.imageView.layer.cornerRadius = 15
            }
        }
        // запустити запит
        task.resume()
    }
    
    
    
    }
    


