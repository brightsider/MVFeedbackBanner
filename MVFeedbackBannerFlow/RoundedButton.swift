//
//  RoundedButton.swift
//  MVFeedbackBannerFlow
//
//  Created by Andrea Bizzotto on 28/09/2016.
//  Copyright © 2016 musevisions. All rights reserved.
//

import UIKit

enum RoundedButtonStyle: Int {
    case fill
    case border
}

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var buttonStyle: RoundedButtonStyle = .border {
        didSet {
            switch buttonStyle {
            case .border:
                self.layer.borderWidth = 1.0
                self.layer.borderColor = UIColor.white.cgColor
                self.backgroundColor = UIColor.clear
                self.setTitleColor(UIColor.white, for: .normal)
            case .fill:
                self.layer.borderWidth = 0.0
                self.backgroundColor = UIColor.white
                self.setTitleColor(UIColor(red: 20.0/255.0, green: 160.0/255.0, blue: 1.0, alpha: 1.0), for: .normal)
            }
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            self.layer.cornerRadius = cornerRadius
        }
        get {
            return self.layer.cornerRadius
        }
    }

    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
    }
}