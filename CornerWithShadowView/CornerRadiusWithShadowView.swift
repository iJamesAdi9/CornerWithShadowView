//
//  CornerRadiusWithShadowView.swift
//  CornerWithShadowView
//
//  Created by Wachiravit Teerasarn on 6/12/2565 BE.
//

import Foundation
import UIKit

class CornerRadiusWithShadowView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.sublayers?.removeAll(where: { $0.name == "containerViewLayer" })
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.name = "containerViewLayer"
        shapeLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: frame.height/2).cgPath
        shapeLayer.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        shapeLayer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        shapeLayer.shadowOffset = CGSize(width: 1.0, height: 2.0)
        shapeLayer.shadowOpacity = 0.8
        shapeLayer.shadowRadius = 2
        layer.insertSublayer(shapeLayer, at: 0)
    }
}
