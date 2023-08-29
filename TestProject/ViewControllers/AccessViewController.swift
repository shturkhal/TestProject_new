//
//  AccessViewController.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import UIKit

class AccessViewController: UIViewController {


    @IBOutlet var coverImageView: UIImageView!
    @IBOutlet var button: UIButton!
    
    @IBOutlet var textLabel: UILabel!
    // створити змінну типу даних з моделі, для подальшого отримання інформації з моделі
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // назначаємо для зображення вʼю зображення з назвою треку з моделі
        coverImageView.layer.cornerRadius = 10
        coverImageView.image = UIImage(named: track.track)
        textLabel.text = track.track
    }

    @IBAction func buttonAction(_ sender: Any) {
        // функція зникнення модального екрану
        dismiss(animated: true)
    }

    

}
