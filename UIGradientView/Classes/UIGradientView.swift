//
//  UIGradientView.swift
//  boostco.de
//
//  Created by Matteo Crippa on 7/29/16.
//  Copyright © 2016 Matteo Crippa. All rights reserved.
//

import UIKit

@IBDesignable public class UIGradientView: UIView {
    
    @IBInspectable public var startColor: UIColor = UIColor.whiteColor()
    @IBInspectable public var endColor: UIColor = UIColor.blackColor()
    
    @IBInspectable public var startLocation: Double = 0.05
    @IBInspectable public var endLocation: Double = 0.95
    
    @IBInspectable public var horizontalMode: Bool = false
    
    override public class func layerClass() -> AnyClass { return CAGradientLayer.self }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        guard let layer = layer as? CAGradientLayer else { return }
        if horizontalMode {
            layer.startPoint = CGPoint(x: 0, y: 0.5)
            layer.endPoint   = CGPoint(x: 1, y: 0.5)
        } else {
            layer.startPoint = CGPoint(x: 0.5, y: 0)
            layer.endPoint   = CGPoint(x: 0.5, y: 1)
        }
        layer.locations = [startLocation, endLocation]
        layer.colors    = [startColor.CGColor, endColor.CGColor]
    }
}
