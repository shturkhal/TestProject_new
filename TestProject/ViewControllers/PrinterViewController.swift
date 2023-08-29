//
//  PrinterViewController.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}
                


class PrinterViewController: UIViewController, CardSliderDataSource {
   
    

    @IBOutlet var showButton: UIButton!
    
    var data = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpShowButton()
        data.append(Item(image: UIImage(named: "flame")!,
                         rating: nil,
                         title: "Як це буде українською?",
                         subtitle: "Щоб дізнатись, натисни на зображення",
                         description: "Це ПОЛУМʼЯ"))
        data.append(Item(image: UIImage(named: "chair")!,
                         rating: nil,
                         title: "Як це буде українською?",
                         subtitle: "Щоб дізнатись, натисни на зображення",
                         description: "Це КРІСЛО"))
        data.append(Item(image: UIImage(named: "rope")!,
                         rating: nil,
                         title: "Як це буде українською?",
                         subtitle: "Щоб дізнатись, натисни на зображення",
                         description: "Це МОТУЗКА"))
       
   
    }
    

    @IBAction func showButtonAction() {
        // Present the card slider

        let vc = CardSliderViewController.with(dataSource: self)
        
        vc.title = "Вітаю! 🇺🇦"
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
 
        
    }
    
    func setUpShowButton() {
//        showButton.setTitle("Show cards", for: .normal)
        showButton.setTitleColor(.white, for: .normal)
        showButton.backgroundColor = .link
        showButton.layer.cornerRadius = 12
    }
    
    func item(for index: Int) -> CardSlider.CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    
    
}
