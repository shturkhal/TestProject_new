//
//  SplashController.swift
//  TestProject
//
//  Created by Іван Штурхаль on 25.07.2023.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
// wait 2 seconds and go to the next view
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.performSegue(withIdentifier: "WelcomeView", sender: nil)
          
        }
       
    }
    

   

}
