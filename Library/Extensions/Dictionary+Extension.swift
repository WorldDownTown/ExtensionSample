//
//  Dictionary+Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import Foundation

public func +<K, V>(lhs: [K: V], rhs: [K: V]) -> [K: V] {
    var lhs = lhs
    for (key, value) in rhs {
        lhs[key] = value
    }
    return lhs
}
