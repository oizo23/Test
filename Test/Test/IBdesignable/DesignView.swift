//
//  DesignView.swift
//  Test
//
//  Created by Sergei Morozov on 29.03.2018.
//  Copyright © 2018 Sergei Morozov. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}



