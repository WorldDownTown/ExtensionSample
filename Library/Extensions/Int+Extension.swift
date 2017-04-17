//
//  Int+Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import Foundation

private let formatter: NumberFormatter = NumberFormatter()

private func formattedString(number: Int, style: NumberFormatter.Style, localeIdentifier: String) -> String {
    formatter.numberStyle = style
    formatter.locale = Locale(identifier: localeIdentifier)
    return formatter.string(from: number as NSNumber) ?? ""
}


public extension Int {

    // カンマ区切りString
    var formattedJPString: String {
        return formattedString(number: self, style: .decimal, localeIdentifier: "ja_JP")
    }

    // 日本円表記のString
    var JPYString: String {
        return formattedString(number: self, style: .currency, localeIdentifier: "ja_JP")
    }

    // USドル表記のString
    var USDString: String {
        return formattedString(number: self, style: .currency, localeIdentifier: "en_US")
    }
}

extension Int: ExtensionCompatible { }

public extension Extension where Base == Int {

    // 日本円表記のString
    var JPYString: String {
        return formattedString(number: base, style: .currency, localeIdentifier: "ja_JP")
    }
}
