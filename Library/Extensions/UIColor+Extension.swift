//
//  UIColor+Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import UIKit

public extension UIColor {

    public convenience init(rgb: UInt, alpha: CGFloat = 1.0) {
        let red: CGFloat = CGFloat((rgb & 0xff0000) >> 16) / 255.0
        let green: CGFloat = CGFloat((rgb & 0x00ff00) >> 8) / 255.0
        let blue: CGFloat = CGFloat(rgb & 0x0000ff) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    public struct iq {
        public static let pink: UIColor = UIColor(rgb: 0xfa4664)
        public static let textBlack: UIColor = UIColor(rgb: 0x333333)
    }
}
