//
//  Date+Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import Foundation

private let formatter: DateFormatter = {
    let formatter: DateFormatter = DateFormatter()
    formatter.timeZone = NSTimeZone.system
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.calendar = Calendar(identifier: .gregorian)
    return formatter
}()

public extension Date {

    // Date→String
    func string(format: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> String {
        formatter.dateFormat = format
        return formatter.string(from: self)
    }

    // String → Date
    init?(dateString: String, format: String = "yyyy-MM-dd'T'HH:mm:ssZ") {
        formatter.dateFormat = format
        guard let date = formatter.date(from: dateString) else { return nil }
        self = date
    }
}
