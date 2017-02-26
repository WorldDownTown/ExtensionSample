//
//  Int+Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import Foundation

private let formatter: NumberFormatter = {
    let formatter: NumberFormatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = Locale(identifier: "ja_JP")
    return formatter
}()

public extension Int {

    // 日本円表記のStringに変換する
    public var JPYString: String {
        return formatter.string(from: self as NSNumber) ?? ""
    }
}
