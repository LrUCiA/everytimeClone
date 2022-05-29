//
//  UIColor+Extension.swift
//  everytimeClone
//
//  Created by LrUCiA.
//

import UIKit

/// Zeplin의 색상 범위를 0~255에서 0~1로 변경
extension UIColor {
    // With alpha
    convenience init(r: Int, g:Int, b:Int, a: Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: CGFloat(a)/255)
    }
    // No alpha
    convenience init(r: Int, g:Int, b:Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1)
    }
    
    // All RGB same
    convenience init(w: Int) {
        self.init(white: CGFloat(w)/255, alpha: 1)
    }
}
