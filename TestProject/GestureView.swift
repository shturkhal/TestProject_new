//
//  GestureView.swift
//  TestProject
//
//  Created by Іван Штурхаль on 06.09.2023.
//

import UIKit

protocol GestureDelegate: AnyObject {
    func didTap(_ view: GestureView)
}


class GestureView: UIView {
    
    weak var delegate: GestureDelegate?
    
    override class func awakeFromNib() {
        
    }
   @objc
    func didTap() {
        delegate?.didTap(self)
        print(#function)
//        print("Gesture View Tap")
    }
   
}
