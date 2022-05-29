//
//  InsetTextField.swift
//  everytimeClone
//
//  Created by LrUCiA.
//

import UIKit


// textField inset custom
class InsetTextField: UITextField {
    var insetX: CGFloat = 6 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    var insetY: CGFloat = 6 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
}
