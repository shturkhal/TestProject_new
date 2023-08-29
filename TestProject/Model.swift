//
//  Model.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import Foundation
import UIKit

struct Helpers {
    
    //    public let shared = Helpers()
    
    static func addVerticalGradientLayerForImageView(topColor: UIColor, bottomColor: UIColor, screen: UIImageView) {
        let gradient = CAGradientLayer()
        gradient.frame = screen.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        screen.layer.insertSublayer(gradient, at: 0)
        print(#function)
    }
    
    
    //    public func insertBlurView (view: UIView, style: UIBlurEffect.Style) -> UIVisualEffectView {
    //        view.backgroundColor = UIColor.clear
    //
    //        let blurEffect = UIBlurEffect(style: style)
    //        let blurEffectView = UIVisualEffectView(effect: blurEffect)
    //        blurEffectView.frame = view.bounds
    //        view.insertSubview(blurEffectView, at: 0)
    //        return blurEffectView
    //    }
    
    static func generatorOfColors() -> UIColor {
        let color = UIColor(red: CGFloat.random(in: 0...255)/255, green: CGFloat.random(in: 0...255)/255, blue: CGFloat.random(in: 0...255)/255, alpha: 1)
        print(#function, color)
        return color
    }
    
    static func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor, view: UIView) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    
    // flag
    public let primaryColor = UIColor(
        
        red: 0/255,
        green: 87/255,
        blue: 184/255,
        alpha: 0.5
    )
    public let secondaryColor = UIColor(
        red: 255/255,
        green: 215/255,
        blue: 0/255,
        alpha: 0.5
    )
    
}
