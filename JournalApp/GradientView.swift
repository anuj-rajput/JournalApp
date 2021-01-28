//
//  GradientView.swift
//  JournalApp
//
//  Created by Anuj Rajput on 28/01/21.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    override class var layerClass: AnyClass {
        CAGradientLayer.self
    }
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1) {
        didSet {
            setGradientColors()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1) {
        didSet {
            setGradientColors()
        }
    }
    
    lazy var gradientLayer: CAGradientLayer = {
        layer as! CAGradientLayer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setGradientColors()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setGradientColors()
    }
    
    func setGradientColors() -> Void {
        let gradientLayer = layer as! CAGradientLayer
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
    }
}
