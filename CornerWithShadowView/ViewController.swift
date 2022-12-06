//
//  ViewController.swift
//  CornerWithShadowView
//
//  Created by Wachiravit Teerasarn on 6/12/2565 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var myTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        containerView.layer.sublayers?.removeAll(where: { $0.name == "containerViewLayer"} )
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.name = "containerViewLayer"
        shapeLayer.path = UIBezierPath(roundedRect: containerView.bounds, cornerRadius: containerView.frame.height/2).cgPath
        shapeLayer.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        shapeLayer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        shapeLayer.shadowOffset = CGSize(width: 1.0, height: 2.0)
        shapeLayer.shadowOpacity = 0.8
        shapeLayer.shadowRadius = 2
        containerView.layer.insertSublayer(shapeLayer, at: 0)
    }

}

