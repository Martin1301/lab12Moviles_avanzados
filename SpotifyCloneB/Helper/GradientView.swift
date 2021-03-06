//
//  GradientView.swift
//  SpotifyCloneB
//

import Foundation
import UIKit

@IBDesignable class GradientView: UIView {
    
    var gradientLayer: CAGradientLayer {
        return layer as! CAGradientLayer
    }
    
    override open class var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }
    
    internal var cgColorGradient: [CGColor]? {
        guard let startColor = startColor, let endColor = endColor else { return nil }
        
        return [startColor.cgColor, endColor.cgColor]
    }
    
    
    @IBInspectable var startColor: UIColor? {
        didSet {
            gradientLayer.colors = cgColorGradient
        }
    }
    
    @IBInspectable var endColor: UIColor? {
        didSet {
            gradientLayer.colors = cgColorGradient
        }
    }
    
    @IBInspectable var startPoint: CGPoint = CGPoint(x: 0.0, y: 0.0) {
        didSet {
            gradientLayer.startPoint = startPoint
        }
    }
    
    @IBInspectable var endPoint: CGPoint = CGPoint(x: 0.0, y: 0.0) {
        didSet {
            gradientLayer.endPoint = endPoint
        }
    }
    
}
