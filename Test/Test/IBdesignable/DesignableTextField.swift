//
//  DesignableTextField.swift
//  Test
//
//  Created by Sergei Morozov on 29.03.2018.
//  Copyright © 2018 Sergei Morozov. All rights reserved.
//

import UIKit

@IBDesignable class DesignableTextField: UITextField {
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        
        if let image = leftImage {
            leftViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20)) //int
            imageView.image = image
            
            var width = leftPadding + 20
            if borderStyle == UITextBorderStyle.none || borderStyle == UITextBorderStyle.line {
                width = width + 15
            }
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20)) //int
            view.addSubview(imageView)
            
            leftView = view
            
        } else {
            leftViewMode = .never
        }
    }
    
}

