//
//  Int+Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import Foundation

private let formatter: NumberFormatter = NumberFormatter()

public extension Int {

    private func formattedString(style: NumberFormatter.Style, localeIdentifier: String) -> String {
        formatter.numberStyle = style
        formatter.locale = Locale(identifier: localeIdentifier)
        return formatter.string(from: self as NSNumber) ?? ""
    }

    // カンマ区切りString
    var formattedJPString: String {
        return formattedString(style: .decimal, localeIdentifier: "ja_JP")
    }

    // 日本円表記のString
    var JPYString: String {
        return formattedString(style: .currency, localeIdentifier: "ja_JP")
    }

    // USドル表記のString
    var USDString: String {
        return formattedString(style: .currency, localeIdentifier: "en_US")
    }
}
